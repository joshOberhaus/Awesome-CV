.PHONY: project

CC = xelatex
PROJECT_DIR = project
RESUME_DIR = project/resume
CV_DIR = project/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

project: $(foreach x, resume resume_longform, $x)

resume: $(PROJECT_DIR)/JoshOberhausResume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(PROJECT_DIR) $<

resume_longform: $(PROJECT_DIR)/JoshOberhausResume.tex $(RESUME_SRCS)
	$(CC) -jobname=JoshOberhaus_longform -output-directory=$(PROJECT_DIR) $<

coverletter: $(PROJECT_DIR)/coverletter.tex
	$(CC) -output-directory=$(PROJECT_DIR) $<

clean:
	rm -rf $(PROJECT_DIR)/*.pdf
