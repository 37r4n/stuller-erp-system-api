import { NotFoundError } from '../../../../../errors';
import { CourseRepository } from '../../../course';
import { SectionRepository } from '../..';
import { SectionTranslationRepository } from '../../../../multilang/section-translation';
import { LanguageRepository } from '../../../../multilang/language';

export class PaginateSectionsUseCase {
  private readonly courseRepository: CourseRepository;
  private readonly sectionRepository: SectionRepository;
  private readonly sectionTranslationRepository: SectionTranslationRepository;
  private readonly languageRepository: LanguageRepository;

  constructor({
    courseRepository,
    sectionRepository,
    sectionTranslationRepository,
    languageRepository,
  }: {
    courseRepository: CourseRepository;
    sectionRepository: SectionRepository;
    sectionTranslationRepository: SectionTranslationRepository;
    languageRepository: LanguageRepository;
  }) {
    this.courseRepository = courseRepository;
    this.sectionRepository = sectionRepository;
    this.sectionTranslationRepository = sectionTranslationRepository;
    this.languageRepository = languageRepository;
  }

  public async execute({
    language_code,
    course_id,
    page,
    limit,
  }: {
    language_code: string;
    course_id: string;
    page: number;
    limit: number;
  }) {
    // verify if course exists
    const course = await this.courseRepository.first({ where: { id: course_id } });
    if (!course) throw new NotFoundError({ message: 'Course could not be found.' });

    // verify if language exists
    const language = await this.languageRepository.first({ where: { code: language_code } });
    if (!language) throw new NotFoundError({ message: 'Language could not be found.' });

    // get sections
    const sections = (await this.sectionRepository.get({ where: { course_id } })).sort(
      (a, b) => a.display_order - b.display_order,
    );

    // create pagination
    if (limit < 1) limit = 1;
    if (page < 1) page = 1;
    const total_items = (await sections).length;
    const total_pages = Math.max(1, Math.ceil(total_items / limit));
    const current_page = page;
    const per_page = limit;
    const offset = (page - 1) * limit;
    const results = (await sections).slice(offset, offset + limit);

    // get more information about results
    const data = [];
    for (const section of results) {
      // get translation
      const section_translation =
        (await this.sectionTranslationRepository.first({
          where: { section_id: section.id, language_id: language.id },
        })) || (await this.sectionTranslationRepository.first({ where: { section_id: course.id } }));

      // create response
      data.push({
        id: section.id,
        title: section_translation?.title ?? null,
        description: section_translation?.description ?? null,
        display_order: section.display_order,
        thumbnail_url: section.thumbnail_url,
        background_url: section.background_url,
      });
    }

    // return response
    return {
      data,
      pagiantion: {
        total_items,
        total_pages,
        current_page,
        per_page,
      },
    };
  }
}
