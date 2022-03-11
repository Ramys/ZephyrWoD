////////////////////////////////////////////////////////////////////////////////
//
//  MILLENIUM-STUDIO
//  Copyright 2016 Millenium-studio SARL
//  ZephyrWoD - 2022 Fluxurion
//  All Rights Reserved.
//
////////////////////////////////////////////////////////////////////////////////

#include "GitRevision.h"
#include "CompilerDefs.h"
#include "revision_data.h"

char const* GitRevision::GetHash()
{
    return _HASH;
}

char const* GitRevision::GetDate()
{
    return _DATE;
}

char const* GitRevision::GetBranch()
{
    return _BRANCH;
}

char const* GitRevision::GetSourceDirectory()
{
    return _SOURCE_DIRECTORY;
}

char const* GitRevision::GetMySQLExecutable()
{
    return _MYSQL_EXECUTABLE;
}

char const* GitRevision::GetFullDatabase()
{
    return _FULL_DATABASE;
}

#define _PACKAGENAME "Zephyr WoD"

char const* GitRevision::GetFullVersion()
{
#if PLATFORM == PLATFORM_WINDOWS
# ifdef _WIN64
    return _PACKAGENAME " rev. " VER_PRODUCTVERSION_STR " (Win64)";
# else
    return _PACKAGENAME " rev. " VER_PRODUCTVERSION_STR " (Win32)";
# endif
#else
    return _PACKAGENAME " rev. " VER_PRODUCTVERSION_STR " (Unix)";
#endif
}

char const* GitRevision::GetCompanyNameStr()
{
    return VER_COMPANYNAME_STR;
}

char const* GitRevision::GetLegalCopyrightStr()
{
    return VER_LEGALCOPYRIGHT_STR;
}

char const* GitRevision::GetFileVersionStr()
{
    return VER_FILEVERSION_STR;
}

char const* GitRevision::GetProductVersionStr()
{
    return VER_PRODUCTVERSION_STR;
}
