DEP = file.d

file.pdf: file.ms
	@../troffm $@ $< > $(DEP) # generate $(DEP)
	groff -ms $< -Tpdf > $@

# include $(DEP) so we can keep track of included files
-include $(DEP)

clean:
	$(RM) file.pdf file.d

.PHONY: clean
