import { UserRepository } from '../../domain/repository';

export class FindUserUseCase {
  private readonly userRepository: UserRepository;

  constructor({ userRepository }: { userRepository: UserRepository }) {
    this.userRepository = userRepository;
  }

  public async execute({ id }: { id: string }) {
    //get uesr
    let user = await this.userRepository.first({ where: { id } });
    if (!user) user = await this.userRepository.first({ where: { code: id } });

    // return response
    return {
      id: user?.id ?? null,
      code: user?.code ?? null,
      name: user?.name ?? null,
      avatar_url: user?.avatar_url ?? null,
    };
  }
}
