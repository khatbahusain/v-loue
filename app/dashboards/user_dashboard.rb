require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    sender_comments: Field::HasMany.with_options(class_name: "Comment"),
    received_comments: Field::HasMany.with_options(class_name: "Comment"),
    sent_messages: Field::HasMany.with_options(class_name: "PrivateMessage"),
    received_messages: Field::HasMany.with_options(class_name: "PrivateMessage"),
    rents: Field::HasMany,
   
    avatar_blob: Field::HasOne,
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    first_name: Field::String,
    last_name: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    sign_in_count: Field::Number,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    birthday: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  sender_comments
  received_comments
  sent_messages
  received_messages
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  sender_comments
  received_comments
  sent_messages
  received_messages
  rents
  avatar_attachment
  avatar_blob
  id
  email
  encrypted_password
  first_name
  last_name
  reset_password_token
  reset_password_sent_at
  remember_created_at
  sign_in_count
  current_sign_in_at
  last_sign_in_at
  created_at
  updated_at
  birthday
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  sender_comments
  received_comments
  sent_messages
  received_messages
  rents

  email
  encrypted_password
  first_name
  last_name
  reset_password_token
  reset_password_sent_at
  remember_created_at
  sign_in_count
  current_sign_in_at
  last_sign_in_at
  birthday
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
