import os
import sys
import fnmatch

if __name__ == "__main__": 
    if len(sys.argv) < 2: 
        print 'No folder provided. Usage pdfcompress_all.py <folder_with_pdfs>'
        sys.exit(0)

    print 'Files from folder: ', sys.argv[1]
    pdfs = [os.path.join(dirpath, f)
        for dirpath, dirnames, files in os.walk(sys.argv[1])
        for f in fnmatch.filter(files, '*.pdf')]
    pdfs = filter(lambda fn: '-compressed.pdf' not in fn, pdfs)

    output_pdfs = map(lambda fn: fn.replace('.pdf', '-compressed.pdf'), pdfs)

    for fn, ofn in zip(pdfs, output_pdfs): 
        ostr = '''gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 ''' \
        '''-dPDFSETTINGS=/prepress -dNOPAUSE -dBATCH ''' \
        '''-dQUIET -sOutputFile=%s %s''' % (ofn, fn)
        print ostr
        os.system(ostr)
        os.system('mv %s %s' % (ofn, fn))
        print '-------------------------'
    
    sys.exit(0)
