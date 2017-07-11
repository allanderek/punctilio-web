import jinja2

def compile():
    env = jinja2.Environment(
        loader=jinja2.PackageLoader('punctilio', '.'),
        autoescape=jinja2.select_autoescape(['html', 'xml'])
    )

    for page in ['index', 'testimonials', 'accreditation']:
        template = env.get_template(page + '.jinja')
        with open(page + '.html', 'w') as outfile:
            outfile.write(template.render())

if __name__ == '__main__':
    compile()
