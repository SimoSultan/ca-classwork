require_relative "./post"

def main()

    new_post = generate_post("This is a Title", "This is the body of the text")
    system "clear"
    p new_post.title
    p new_post.body

    new_post.add_tags_to_post("new", "tag", "please")

    new_post.show_tags()
    new_post.remove_tag('tag')
    new_post.show_tags()

end

main()