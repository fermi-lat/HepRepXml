/** 

*  $Header: /nfs/slac/g/glast/ground/cvs/userAlg/src/UserAlg_load.cxx,v 1.6 2002/10/03 17:04:29 burnett Exp $
*/

#include "GaudiKernel/DeclareFactoryEntries.h"
#include "GaudiKernel/IToolFactory.h"

#define DLL_DECL_TOOL(x) extern const IToolFactory& x##Factory; x##Factory.addRef();


DECLARE_FACTORY_ENTRIES(HepRepXml) {
  DLL_DECL_TOOL(RegisterXml);
}

#include "GaudiKernel/LoadFactoryEntries.h"

LOAD_FACTORY_ENTRIES(HepRepXml)
