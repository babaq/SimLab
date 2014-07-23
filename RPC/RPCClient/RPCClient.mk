##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=RPCClient
ConfigurationName      :=Debug
WorkspacePath          := "/home/alex/sf_SimLab/RPC/RPCServer"
ProjectPath            := "/home/alex/sf_SimLab/RPC/RPCClient"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Alex
Date                   :=07/21/14
CodeLitePath           :="/home/alex/.codelite"
LinkerName             :=/usr/bin/g++ 
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="RPCClient.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)thrift 
ArLibs                 :=  "libthrift" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++ 
CC       := /usr/bin/gcc 
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as 


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/clientmain.cpp$(ObjectSuffix) $(IntermediateDirectory)/gen-cpp_RPC.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/clientmain.cpp$(ObjectSuffix): clientmain.cpp $(IntermediateDirectory)/clientmain.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/alex/sf_SimLab/RPC/RPCClient/clientmain.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/clientmain.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/clientmain.cpp$(DependSuffix): clientmain.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/clientmain.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/clientmain.cpp$(DependSuffix) -MM "clientmain.cpp"

$(IntermediateDirectory)/clientmain.cpp$(PreprocessSuffix): clientmain.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/clientmain.cpp$(PreprocessSuffix) "clientmain.cpp"

$(IntermediateDirectory)/gen-cpp_RPC.cpp$(ObjectSuffix): ../gen-cpp/RPC.cpp $(IntermediateDirectory)/gen-cpp_RPC.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/alex/sf_SimLab/RPC/gen-cpp/RPC.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gen-cpp_RPC.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gen-cpp_RPC.cpp$(DependSuffix): ../gen-cpp/RPC.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/gen-cpp_RPC.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/gen-cpp_RPC.cpp$(DependSuffix) -MM "../gen-cpp/RPC.cpp"

$(IntermediateDirectory)/gen-cpp_RPC.cpp$(PreprocessSuffix): ../gen-cpp/RPC.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gen-cpp_RPC.cpp$(PreprocessSuffix) "../gen-cpp/RPC.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/clientmain.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/clientmain.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/clientmain.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/gen-cpp_RPC.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/gen-cpp_RPC.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/gen-cpp_RPC.cpp$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) "../RPCServer/.build-debug/RPCClient"


