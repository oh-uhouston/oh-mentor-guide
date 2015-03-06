IMGS:= img/communications_handout.png \
	img/finding_projects_handout.png \
	img/practicing_git_student_handout.png \
	img/sign_in_sheet.png \
	img/walkthrough.png

all: $(IMGS)
%.pdf: %.odt
	unoconv -f pdf $<

clean:
	rm -fv $(IMGS)
	rm -fv open-source-comes-to-campus/curriculum/handouts/FindingProjects_Student_Handout.pdf open-source-comes-to-campus/curriculum/handouts/sign_in_sheet.pdf

MUDRAW_PDF_TO_PNG= mudraw -o $@ $< 1

img/communications_handout.png: open-source-comes-to-campus/curriculum/handouts/Communications_Handout.pdf
	$(MUDRAW_PDF_TO_PNG)
img/finding_projects_handout.png: open-source-comes-to-campus/curriculum/handouts/FindingProjects_Student_Handout.pdf
	$(MUDRAW_PDF_TO_PNG)
img/practicing_git_student_handout.png: open-source-comes-to-campus/curriculum/handouts/Practicing_Git_Student_Handout.pdf
	$(MUDRAW_PDF_TO_PNG)
img/sign_in_sheet.png: open-source-comes-to-campus/curriculum/handouts/sign_in_sheet.pdf
	$(MUDRAW_PDF_TO_PNG)
img/walkthrough.png: open-source-comes-to-campus/curriculum/handouts/walkthrough.pdf
	$(MUDRAW_PDF_TO_PNG)

