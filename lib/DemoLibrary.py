def init_system():
    print("------init sytem-------")


def create_user(usename, age):
    print("=====Create_User,usename:", usename, "=====age:", age)


def user_should_be_exit(usename):
    assert usename == "taozs"


def print_file_content(content):
    print("==file content===", content)


def setup_suite():
    print("=====this is setup for suite======")


def setup_test_case():
    print("------this is setup for test case----")
