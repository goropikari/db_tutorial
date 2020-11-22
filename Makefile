CC := gcc
CFLAGS := -g -Wall -Wextra

db:

clean:
	$(RM) db

test:
	bundle exec rspec
