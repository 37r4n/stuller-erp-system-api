CREATE TABLE IF NOT EXISTS `auth_users` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `code` VARCHAR(191) NOT NULL UNIQUE,
  `name` VARCHAR(191) NOT NULL,
  `is_active` BOOLEAN NOT NULL DEFAULT TRUE,
  `avatar_url` VARCHAR(191),
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3) NULL
);

CREATE TABLE IF NOT EXISTS `auth_sessions` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `user_id` VARCHAR(191) NOT NULL,
  `access_token` VARCHAR(191) NOT NULL,
  `refresh_token` VARCHAR(191) NOT NULL,
  `access_token_expires_at` DATETIME(3) NOT NULL,
  `refresh_token_expires_at` DATETIME(3) NOT NULL,
  `revoked_at` DATETIME(3),
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3),
  CONSTRAINT `auth_sessions_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `auth_users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `auth_permissions` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `name` VARCHAR(191) NOT NULL UNIQUE,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3) NULL
);

CREATE TABLE IF NOT EXISTS `auth_roles` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `name` VARCHAR(191) NOT NULL UNIQUE,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3) NULL
);

CREATE TABLE IF NOT EXISTS `auth_role_permissions` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `role_id` VARCHAR(191) NOT NULL,
  `permission_id` VARCHAR(191) NOT NULL,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3) NULL,
  CONSTRAINT `auth_permission_roles_role_id_permission_id_key` UNIQUE (`role_id`, `permission_id`),
  CONSTRAINT `auth_permission_roles_role_id_fkey` FOREIGN KEY (`role_id`) REFERENCES `auth_roles`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `auth_permission_roles_permission_id_fkey` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `auth_user_roles` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `user_id` VARCHAR(191) NOT NULL,
  `role_id` VARCHAR(191) NOT NULL,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3) NULL,
  CONSTRAINT `auth_user_roles_user_id_role_id_key` UNIQUE (`user_id`, `role_id`),
  CONSTRAINT `auth_user_roles_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `auth_users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `auth_user_roles_role_id_fkey` FOREIGN KEY (`role_id`) REFERENCES `auth_roles`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `academy_courses` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `author_id` VARCHAR(191) NOT NULL,
  `thumbnail_url` VARCHAR(191),
  `background_url` VARCHAR(191),
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3) NULL,
  CONSTRAINT `academy_courses_author_id_fkey` FOREIGN KEY (`author_id`) REFERENCES `auth_users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `academy_sections` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `course_id` VARCHAR(191) NOT NULL,
  `thumbnail_url` VARCHAR(191),
  `background_url` VARCHAR(191),
  `display_order` INT NOT NULL,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3),
  CONSTRAINT `academy_sections_course_id_fkey` FOREIGN KEY (`course_id`) REFERENCES `academy_courses`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `academy_lessons` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `section_id` VARCHAR(191) NOT NULL,
  `display_order` INT NOT NULL,
  `duration_seconds` INT NOT NULL,
  `thumbnail_url` VARCHAR(191),
  `background_url` VARCHAR(191),
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3),
  CONSTRAINT `academy_lessons_section_id_fkey` FOREIGN KEY (`section_id`) REFERENCES `academy_sections`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `academy_enrollments` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `user_id` VARCHAR(191) NOT NULL,
  `course_id` VARCHAR(191) NOT NULL,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3) NULL,
  CONSTRAINT `academy_enrollments_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `auth_users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `academy_enrollments_course_id_fkey` FOREIGN KEY (`course_id`) REFERENCES `academy_courses`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `academy_progress` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `user_id` VARCHAR(191) NOT NULL,
  `lesson_id` VARCHAR(191) NOT NULL,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3) NULL,
  CONSTRAINT `academy_progress_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `auth_users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `academy_progress_lesson_id_fkey` FOREIGN KEY (`lesson_id`) REFERENCES `academy_lessons`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `multilang_languages` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `code` VARCHAR(10) NOT NULL UNIQUE,
  `name` VARCHAR(191) NOT NULL,
  `native_name` VARCHAR(191),
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3) NULL
);

CREATE TABLE IF NOT EXISTS `multilang_academy_courses` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `language_id` VARCHAR(191) NOT NULL,
  `course_id` VARCHAR(191) NOT NULL,
  `title` VARCHAR(191) NOT NULL,
  `description` VARCHAR(191),
  `manual_url` VARCHAR(191),
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3) NULL,
  CONSTRAINT `fk_multilang_academy_courses_language` FOREIGN KEY (`language_id`) REFERENCES `multilang_languages`(`id`),
  CONSTRAINT `fk_multilang_academy_courses_course` FOREIGN KEY (`course_id`) REFERENCES `academy_courses`(`id`),
  CONSTRAINT `uq_course_language` UNIQUE (`language_id`, `course_id`)
);

CREATE TABLE IF NOT EXISTS `multilang_academy_sections` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `language_id` VARCHAR(191) NOT NULL,
  `section_id` VARCHAR(191) NOT NULL,
  `title` VARCHAR(191) NOT NULL,
  `description` VARCHAR(191),
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3) NULL,
  CONSTRAINT `fk_section_lang` FOREIGN KEY (`language_id`) REFERENCES `multilang_languages`(`id`),
  CONSTRAINT `fk_section_base` FOREIGN KEY (`section_id`) REFERENCES `academy_sections`(`id`),
  CONSTRAINT `uq_section_translation` UNIQUE (`language_id`, `section_id`)
);

CREATE TABLE IF NOT EXISTS `multilang_academy_lessons` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `language_id` VARCHAR(191) NOT NULL,
  `lesson_id` VARCHAR(191) NOT NULL,
  `title` VARCHAR(191) NOT NULL,
  `description` VARCHAR(191),
  `resource_url` VARCHAR(191) NOT NULL,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3) NULL,
  CONSTRAINT `fk_lesson_lang` FOREIGN KEY (`language_id`) REFERENCES `multilang_languages`(`id`),
  CONSTRAINT `fk_lesson_base` FOREIGN KEY (`lesson_id`) REFERENCES `academy_lessons`(`id`),
  CONSTRAINT `uq_lesson_translation` UNIQUE (`language_id`, `lesson_id`)
);

CREATE TABLE IF NOT EXISTS `assistant_bots` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `name` VARCHAR(191) NOT NULL,
  `role` TEXT NOT NULL,
  `task` TEXT NOT NULL,
  `avatar_url` TEXT NOT NULL,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3)
);

CREATE TABLE IF NOT EXISTS `assistant_parameter_types` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `name` VARCHAR(191) NOT NULL,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3)
);

CREATE TABLE IF NOT EXISTS `assistant_message_types` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `name` VARCHAR(191) NOT NULL,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3)
);

CREATE TABLE IF NOT EXISTS `assistant_skills` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `name` VARCHAR(191) NOT NULL,
  `description` TEXT NOT NULL,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3)
);

CREATE TABLE IF NOT EXISTS `assistant_skill_parameters` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `skill_id` VARCHAR(191) NOT NULL,
  `type_id` VARCHAR(191) NOT NULL,
  `name` VARCHAR(191) NOT NULL,
  `description` TEXT NOT NULL,
  `is_required` BOOLEAN NOT NULL DEFAULT FALSE,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3),
  FOREIGN KEY (`skill_id`) REFERENCES `assistant_skills`(`id`),
  FOREIGN KEY (`type_id`) REFERENCES `assistant_parameter_types`(`id`)
);

CREATE TABLE IF NOT EXISTS `assistant_bot_skills` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `bot_id` VARCHAR(191) NOT NULL,
  `skill_id` VARCHAR(191) NOT NULL,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3),
  FOREIGN KEY (`bot_id`) REFERENCES `assistant_bots`(`id`),
  FOREIGN KEY (`skill_id`) REFERENCES `assistant_skills`(`id`),
  UNIQUE (`bot_id`, `skill_id`)
);

CREATE TABLE IF NOT EXISTS `assistant_messages` (
  `id` VARCHAR(191) NOT NULL PRIMARY KEY,
  `bot_id` VARCHAR(191) NOT NULL,
  `user_id` VARCHAR(191) NOT NULL,
  `type_id` VARCHAR(191) NOT NULL,
  `role` VARCHAR(50) NOT NULL CHECK (`role` IN ('user', 'assistant', 'system', 'function')),
  `content` TEXT,
  `skill_call_id` VARCHAR(191) NOT NULL,
  `skill_call_parameters` JSON,
  `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` DATETIME(3),
  FOREIGN KEY (`bot_id`) REFERENCES `assistant_bots`(`id`),
  FOREIGN KEY (`user_id`) REFERENCES `auth_users`(`id`),
  FOREIGN KEY (`type_id`) REFERENCES `assistant_message_types`(`id`),
  FOREIGN KEY (`skill_call_id`) REFERENCES `assistant_bot_skills`(`id`)
);
