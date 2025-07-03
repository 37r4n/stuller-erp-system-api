import { NotFoundError } from '../../../../../errors';
import { IdGenerator } from '../../../../../services';
import { UserRepository } from '../../../../auth/user';
import { LessonRepository } from '../../../lesson';
import { Progress } from '../../domain/entity';
import { ProgressRepository } from '../../domain/repository';

export class CreateProgressUseCase {
  private readonly lessonRepository: LessonRepository;
  private readonly userRepository: UserRepository;
  private readonly progressRepository: ProgressRepository;
  private readonly idGenerator: IdGenerator;

  constructor({
    lessonRepository,
    userRepository,
    progressRepository,
    idGenerator,
  }: {
    lessonRepository: LessonRepository;
    userRepository: UserRepository;
    progressRepository: ProgressRepository;
    idGenerator: IdGenerator;
  }) {
    this.lessonRepository = lessonRepository;
    this.userRepository = userRepository;
    this.progressRepository = progressRepository;
    this.idGenerator = idGenerator;
  }

  public async execute({ lesson_id, user_id }: { lesson_id: string; user_id: string }) {
    // verify if lesson exists
    const lesson = await this.lessonRepository.first({ where: { id: lesson_id } });
    if (!lesson) throw new NotFoundError({ message: 'Lesson could not be found.' });

    // verify if user exists
    const user = await this.userRepository.first({ where: { id: user_id } });
    if (!user) throw new NotFoundError({ message: 'User could not be found.' });

    // verify if progress exists
    const progress = await this.progressRepository.first({ where: { user_id, lesson_id } })
    if (progress) throw new NotFoundError({ message: 'Lesson watched.' });

    // create course
    const new_progress = new Progress({
      id: await this.idGenerator.generate(),
      user_id,
      lesson_id,
    });

    // Load changes
    await this.progressRepository.create({ entity: new_progress });

    // return response
    return {
      id: new_progress.id,
      user: {
        id: user.id,
        name: user.name,
        avatar_url: user.avatar_url,
      },
    };
  }
}
