import { UserRepository } from '../../domain/repository';

export class PaginateUsersUseCase {
  private readonly userRepository: UserRepository;

  constructor({ userRepository }: { userRepository: UserRepository }) {
    this.userRepository = userRepository;
  }

  public async execute({ page, limit, search }: { page: number; limit: number; search: string }) {
    //get uesrs
    const users = await this.userRepository.get({});

    // filter users
    const users_filtered = users.filter(
      (user) =>
        user.name.toLowerCase().includes(search.toLowerCase()) ||
        user.code.toLowerCase().includes(search.toLowerCase()),
    );

    // create pagination
    if (limit < 1) limit = 1;
    if (page < 1) page = 1;
    const total_items = (await users_filtered).length;
    const total_pages = Math.max(1, Math.ceil(total_items / limit));
    const current_page = page;
    const per_page = limit;
    const offset = (page - 1) * limit;
    const results = (await users_filtered).slice(offset, offset + limit);

    // get more information about results
    const data = [];
    for (const user of results) {
      // create response
      data.push({
        id: user.id,
        code: user.code,
        name: user.name,
        avatar_url: user.avatar_url,
        is_active: user.is_active,
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
