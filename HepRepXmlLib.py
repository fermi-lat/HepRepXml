# $Header: /nfs/slac/g/glast/ground/cvs/GlastRelease-scons/HepRepXml/HepRepXmlLib.py,v 1.1 2008/08/15 21:42:36 ecephas Exp $
def generate(env, **kw):
    if not kw.get('depsOnly', 0):
        env.Tool('addLibrary', library = ['HepRepXml'])
    env.Tool('addLibrary', library = env['zlibLibs'])
    env.Tool('HepRepSvcLib')	
def exists(env):
    return 1;
