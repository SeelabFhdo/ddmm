/*
 * generated by Xtext 2.12.0
 */
package de.fhdo.ddmm.technology.mappingdsl.scoping

import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EReference
import de.fhdo.ddmm.technology.mapping.MicroserviceMapping
import de.fhdo.ddmm.technology.mapping.MappingPackage
import de.fhdo.ddmm.technology.Technology
import org.eclipse.xtext.EcoreUtil2
import de.fhdo.ddmm.technology.mapping.TechnologyMapping
import org.eclipse.xtext.scoping.Scopes
import de.fhdo.ddmm.utils.DdmmUtils
import de.fhdo.ddmm.technology.mapping.ImportedMicroservice
import de.fhdo.ddmm.service.ServiceModel
import de.fhdo.ddmm.service.Import
import org.eclipse.xtext.scoping.IScope
import de.fhdo.ddmm.technology.mapping.TechnologySpecificProtocolSpecification
import de.fhdo.ddmm.technology.mapping.TechnologySpecificProtocol
import org.eclipse.xtext.naming.QualifiedName
import com.google.common.base.Predicate
import de.fhdo.ddmm.technology.Protocol
import java.util.List
import de.fhdo.ddmm.technology.mapping.InterfaceMapping
import de.fhdo.ddmm.technology.mapping.OperationMapping
import de.fhdo.ddmm.technology.mapping.ReferredOperationMapping
import de.fhdo.ddmm.technology.mapping.PrimitiveParameterMapping
import de.fhdo.ddmm.technology.TechnologySpecificPrimitiveType
import de.fhdo.ddmm.technology.mapping.ComplexParameterMapping
import de.fhdo.ddmm.data.ComplexType
import de.fhdo.ddmm.technology.TechnologySpecificDataStructure
import com.google.common.base.Function
import de.fhdo.ddmm.technology.TechnologySpecificListType
import de.fhdo.ddmm.data.DataStructure
import de.fhdo.ddmm.data.ListType
import de.fhdo.ddmm.data.DataField
import de.fhdo.ddmm.technology.mapping.TechnologySpecificDataFieldTypeMapping
import de.fhdo.ddmm.technology.mapping.DataFieldHierarchy
import de.fhdo.ddmm.data.Type
import de.fhdo.ddmm.data.PrimitiveType
import de.fhdo.ddmm.technology.mapping.TechnologySpecificImportedServiceAspect
import de.fhdo.ddmm.technology.ExchangePattern
import de.fhdo.ddmm.technology.CommunicationType
import de.fhdo.ddmm.technology.DataFormat
import de.fhdo.ddmm.technology.JoinPointType
import de.fhdo.ddmm.technology.mapping.ParameterMapping
import java.util.Map
import de.fhdo.ddmm.technology.TechnologyPackage
import de.fhdo.ddmm.technology.TechnologySpecificPropertyValueAssignment
import de.fhdo.ddmm.technology.mapping.TechnologySpecificEndpoint
import de.fhdo.ddmm.data.Enumeration

/**
 * This class implements a custom scope provider for the Mapping DSL.
 *
 * @author <a href="mailto:florian.rademacher@fh-dortmund.de">Florian Rademacher</a>
 */
class MappingDslScopeProvider extends AbstractMappingDslScopeProvider {
    /**
     * Build scope for a given context and a given reference
     */
    override getScope(EObject context, EReference reference) {
        val scope = switch (context) {
            /* Microservice mappings */
            MicroserviceMapping: context.getScope(reference)

            /* Imported microservices */
            ImportedMicroservice: context.getScope(reference)

            /* Technology-specific protocol specifications */
            TechnologySpecificProtocolSpecification: context.getScope(reference)

            /* Technology-specific protocols */
            TechnologySpecificProtocol: context.getScope(reference)

            /* Technology-specific endpoints */
            TechnologySpecificEndpoint: context.getScope(reference)

            /* Interface mappings */
            InterfaceMapping: context.getScope(reference)

            /* Operation mappings */
            OperationMapping: context.getScope(reference)

            /* Referred operation mappings */
            ReferredOperationMapping: context.getScope(reference)

            /* Primitive parameter mappings */
            PrimitiveParameterMapping: context.getScope(reference)

            /* Complex parameter mappings */
            ComplexParameterMapping: context.getScope(reference)

            /* Data field mappings */
            TechnologySpecificDataFieldTypeMapping: context.getScope(reference)

            /* Data field hierarchies */
            DataFieldHierarchy: context.getScope(reference)

            /* Imported service aspects */
            TechnologySpecificImportedServiceAspect: context.getScope(reference)

            /* Technology-specific property value assignments */
            TechnologySpecificPropertyValueAssignment: context.getScope(reference)
        }

        if (scope !== null)
            return scope
        // Try default scope resolution, if no scope could be determined
        else if (scope === null)
            return super.getScope(context, reference)
    }

    /**
     * Build scope for microservice mappings and the given reference
     */
    private def getScope(MicroserviceMapping mapping, EReference reference) {
        switch (reference) {
            /* Import of ImportedMicroservices */
            case MappingPackage::Literals.IMPORTED_MICROSERVICE__IMPORT:
                return mapping.getScopeForImportsOfType(ServiceModel)

            /* Protocol technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_PROTOCOL__TECHNOLOGY:
                return mapping.getScopeForAnnotatedTechnologies()

            /* Aspect technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_IMPORTED_SERVICE_ASPECT__TECHNOLOGY:
                return mapping.getScopeForAnnotatedTechnologies()
        }

        return null
    }

    /**
     * Build scope for interface mappings and the given reference
     */
    private def getScope(InterfaceMapping mapping, EReference reference) {
        switch (reference) {
            /* Interfaces */
            case MappingPackage::Literals.INTERFACE_MAPPING__INTERFACE:
                return mapping.getScopeForInterfaces()

            /* Protocol technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_PROTOCOL__TECHNOLOGY:
                return mapping.microserviceMapping.getScopeForAnnotatedTechnologies()

            /* Aspect technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_IMPORTED_SERVICE_ASPECT__TECHNOLOGY:
                return mapping.microserviceMapping.getScopeForAnnotatedTechnologies()
        }

        return null
    }

    /**
     * Build scope for operation mappings and the given reference
     */
    private def getScope(OperationMapping mapping, EReference reference) {
        switch (reference) {
            /* Operation */
            case MappingPackage::Literals.OPERATION_MAPPING__OPERATION:
                return mapping.getScopeForOperations()

            /* Protocol technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_PROTOCOL__TECHNOLOGY:
                return mapping.microserviceMapping.getScopeForAnnotatedTechnologies()

            /* Aspect technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_IMPORTED_SERVICE_ASPECT__TECHNOLOGY:
                return mapping.microserviceMapping.getScopeForAnnotatedTechnologies()
        }

        return null
    }

    /**
     * Build scope for referred operation mappings and the given reference
     */
    private def getScope(ReferredOperationMapping mapping, EReference reference) {
        switch (reference) {
            /* Operation */
            case MappingPackage::Literals.REFERRED_OPERATION_MAPPING__OPERATION:
                return mapping.getScopeForReferredOperations()

            /* Protocol technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_PROTOCOL__TECHNOLOGY:
                return mapping.microserviceMapping.getScopeForAnnotatedTechnologies()

            /* Aspect technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_IMPORTED_SERVICE_ASPECT__TECHNOLOGY:
                return mapping.microserviceMapping.getScopeForAnnotatedTechnologies()
        }

        return null
    }

    /**
     * Build scope for imported microservices
     */
    private def getScope(ImportedMicroservice microservice, EReference reference) {
        switch (reference) {
            /* Scope for service imports */
            case MappingPackage::Literals.IMPORTED_MICROSERVICE__IMPORT:
                return microservice.getScopeForImportsOfType(ServiceModel)

            /* Actual imported microservices */
            case MappingPackage::Literals.IMPORTED_MICROSERVICE__MICROSERVICE:
                return microservice.import.getScopeForImportedMicroservices()
        }

        return null
    }

    /**
     * Build scope for technology-specific protocols and the given reference
     */
    private def getScope(TechnologySpecificProtocolSpecification protocolSpecification,
        EReference reference) {
        switch (reference) {
            /* Technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_PROTOCOL__TECHNOLOGY:
                return EcoreUtil2.getContainerOfType(protocolSpecification, MicroserviceMapping)
                    .getScopeForAnnotatedTechnologies()
        }

        return null
    }

    /**
     * Build scope that comprises annotated technologies of an annotatable concept instance
     */
    private def getScopeForAnnotatedTechnologies(MicroserviceMapping mapping) {
        return Scopes::scopeFor(mapping.technologies)
    }

    /**
     * Build scope for technology protocols and the given reference
     */
    private def getScope(TechnologySpecificProtocol protocol, EReference reference) {
        switch (reference) {
            /* Protocols */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_PROTOCOL__PROTOCOL:
                return protocol.getScopeForTechnologySpecificProtocols()

            /* Data formats */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_PROTOCOL__DATA_FORMAT:
                return protocol.getScopeForDataFormats()
        }

        return null
    }

    /**
     * Build scope for technology-specific endpoints and the given reference
     */
    private def getScope(TechnologySpecificEndpoint endpoint, EReference reference) {
        switch (reference) {
            /* Technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_PROTOCOL__TECHNOLOGY:
                return EcoreUtil2.getContainerOfType(endpoint, MicroserviceMapping)
                    .getScopeForAnnotatedTechnologies()
        }

        return null
    }

    /**
     * Build scope for primitive parameter mappings and the given reference
     */
    private def getScope(PrimitiveParameterMapping mapping, EReference reference) {
        switch (reference) {
            /* Parameters */
            case MappingPackage::Literals.PARAMETER_MAPPING__PARAMETER:
                return mapping.getScopeForPrimitiveParameters()

            /* Types */
            case MappingPackage::Literals.PRIMITIVE_PARAMETER_MAPPING__PRIMITIVE_TYPE:
                return mapping.getScopeForParameterTypes()

            /* Aspect technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_IMPORTED_SERVICE_ASPECT__TECHNOLOGY:
                return EcoreUtil2.getContainerOfType(mapping, MicroserviceMapping)
                    .getScopeForAnnotatedTechnologies()

            /* Data type technologies */
            case MappingPackage::Literals.PRIMITIVE_PARAMETER_MAPPING__TECHNOLOGY:
                return mapping.getScopeForTypeDefinitionTechnology()
        }

        return null
    }

    /**
     * Build scope for complex parameter mappings and the given reference
     */
    private def getScope(ComplexParameterMapping mapping, EReference reference) {
        switch (reference) {
            /* Parameters */
            case MappingPackage::Literals.PARAMETER_MAPPING__PARAMETER:
                return mapping.getScopeForComplexParameters()

            /* Aspect technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_IMPORTED_SERVICE_ASPECT__TECHNOLOGY:
                return EcoreUtil2.getContainerOfType(mapping, MicroserviceMapping)
                    .getScopeForAnnotatedTechnologies()

            /* Data type technologies */
            case MappingPackage::Literals.COMPLEX_PARAMETER_MAPPING__TECHNOLOGY:
                return mapping.getScopeForTypeDefinitionTechnology()

            /* Technology-specific complex types for parameters */
            case MappingPackage::Literals
                .COMPLEX_PARAMETER_MAPPING__TECHNOLOGY_SPECIFIC_COMPLEX_TYPE:
                return mapping.getScopeForParameterTypes()

            /* Data fields */
            case MappingPackage::Literals.DATA_FIELD_HIERARCHY__DATA_FIELDS:
                return mapping.getScopeForComplexDataFields()
        }

        return null
    }

    /**
     * Build scope for technology-specific data field mappings and the given reference
     */
    private def getScope(TechnologySpecificDataFieldTypeMapping mapping, EReference reference) {
        switch (reference) {
            /* Data type technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_DATA_FIELD_TYPE_MAPPING__TECHNOLOGY:
                return mapping.getScopeForTypeDefinitionTechnology()

            /* Types */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_DATA_FIELD_TYPE_MAPPING__TYPE:
                return mapping.getScopeForParameterTypes()
        }

        return null
    }

    /**
     * Build scope for data field hierarchies and the given reference
     */
    private def getScope(DataFieldHierarchy hierarchy, EReference reference) {
        switch (reference) {
            /* Data fields */
            case MappingPackage::Literals.DATA_FIELD_HIERARCHY__DATA_FIELDS:
                return hierarchy.getScopeForComplexDataFields()
        }

        return null
    }

    /**
     * Build scope for interfaces
     */
    private def getScopeForInterfaces(InterfaceMapping mapping) {
        val microserviceMapping = mapping.microserviceMapping
        val microservice = microserviceMapping.microservice.microservice
        return Scopes::scopeFor(microservice.interfaces)
    }

    /**
     * Build scope for operations
     */
    private def getScopeForOperations(OperationMapping mapping) {
        val microserviceMapping = mapping.microserviceMapping
        val microservice = microserviceMapping.microservice.microservice
        if (microservice === null)
            return IScope.NULLSCOPE

        val operations = microservice.interfaces.map[operations].flatten
        return Scopes::scopeFor(operations, [QualifiedName.create(interface.name, name)],
            IScope.NULLSCOPE)
    }

    /**
     * Build scope for primitive parameters of operations
     */
    private def getScopeForPrimitiveParameters(PrimitiveParameterMapping mapping) {
        val primitiveParameters = mapping.operationMapping.operation.parameters
            .filter[primitiveType !== null]
            .toList
        primitiveParameters.addAll(mapping.operationMapping.operation.parameters.filter[
            importedType !== null && importedType.type instanceof TechnologySpecificPrimitiveType
        ])
        return Scopes::scopeFor(primitiveParameters)
    }

    /**
     * Build scope for complex parameters of operations
     */
    private def getScopeForComplexParameters(ComplexParameterMapping mapping) {
        val complexParameters = mapping.operationMapping.operation.parameters
            .filter[importedType !== null && importedType.type instanceof ComplexType]
        return Scopes::scopeFor(complexParameters)
    }

    /**
     * Build scope for technology-specific types for complex parameters
     */
    private def getScopeForParameterTypes(EObject mapping) {
        /* Determine type of mapped parameter */
        var Type parameterType
        var Import technology
        switch (mapping) {
            PrimitiveParameterMapping: {
                parameterType = mapping.parameter.effectiveType
                technology = mapping.technology
            }
            ComplexParameterMapping: {
                parameterType = mapping.parameter.importedType.type
                technology = mapping.technology
            }
            TechnologySpecificDataFieldTypeMapping: {
                parameterType = mapping.dataFieldHierarchy.dataFields.last.effectiveType
                technology = mapping.technology
            }
            default: return IScope.NULLSCOPE
        }

        // May happen if parameter does not exist
        if (parameterType === null)
            return IScope.NULLSCOPE

        /*
         * Setup functions to retrieve scope concepts from imported technology models and their
         * name parts
         */
        var Function<Technology, List<Type>> getImportedConcepts
        var Function<Type, List<String>> getConceptNameParts
        // Parameter is of primitive type
        if (parameterType instanceof PrimitiveType) {
            getImportedConcepts = [primitiveTypes.map[it as Type]]
            getConceptNameParts = [(it as TechnologySpecificPrimitiveType).qualifiedNameParts]
        } else if (parameterType instanceof ComplexType) {
            // Parameter is of structure type
            if (parameterType.isStructure) {
                getImportedConcepts = [dataStructures.map[it as Type]]
                getConceptNameParts = [(it as TechnologySpecificDataStructure).qualifiedNameParts]
            // Parameter is of list type
            } else if (parameterType.isStructuredList || parameterType.isPrimitiveList) {
                getImportedConcepts = [listTypes.map[it as Type]]
                getConceptNameParts = [(it as TechnologySpecificListType).qualifiedNameParts]
            }
        }

        /* Perform actual scope building */
        return DdmmUtils.getScopeForPossiblyImportedConcept(
            technology,
            null,
            Technology,
            technology.importURI,
            getImportedConcepts,
            getConceptNameParts
        )
    }

    /**
     * Build scope for microservice mapping technology that defines types
     */
    private def getScopeForTypeDefinitionTechnology(EObject context) {
        val mapping = if (context instanceof MicroserviceMapping)
                context
            else
                EcoreUtil2.getContainerOfType(context, MicroserviceMapping)

        if (mapping === null)
            return IScope.NULLSCOPE

        val typeDefinitionTechnology = mapping.technologies.findFirst[
            val modelRoot = DdmmUtils.getImportedModelRoot(eResource, importURI, Technology)
            modelRoot !== null && !modelRoot.primitiveTypes.empty
        ]

        if (typeDefinitionTechnology === null)
            return IScope.NULLSCOPE

        return Scopes::scopeFor(#[typeDefinitionTechnology])
    }

    /**
     * Build scope for data fields of complex parameters' types on the first data field hierarchy
     * level. It contains all direct children of the complex parameter being mapped.
     */
    private def getScopeForComplexDataFields(ComplexParameterMapping mapping) {
        // May happen if parameter does not exist
        if (mapping.parameter.importedType === null)
            return IScope.NULLSCOPE

        val previousType = mapping.parameter.importedType.type as ComplexType

        // Enumeration fields cannot be mapped
        if (previousType instanceof Enumeration)
            return IScope.NULLSCOPE

        val nextLeveldDataFields = nextDataFieldsInHierarchy(previousType)
        if (nextLeveldDataFields !== null)
            return Scopes::scopeFor(nextLeveldDataFields)
        else
            return IScope.NULLSCOPE
    }

    /**
     * Build scope for data fields of complex parameters' types on hierarchy levels, i.e., the
     * context is a data field hierarchy
     */
    private def getScopeForComplexDataFields(DataFieldHierarchy hierarchy) {
        var DataField previousDataField
        if (hierarchy.previous === null || hierarchy.previous.dataFields.empty)
            previousDataField = null
        else
            previousDataField = hierarchy.previous.dataFields.last

        // If we're on the first hierarchy level, return scope containing all direct children of the
        // complex parameter being mapped
        if (previousDataField === null) {
            val complexMapping = EcoreUtil2.getContainerOfType(hierarchy, ComplexParameterMapping)
            return getScopeForComplexDataFields(complexMapping)
        }

        // The complex type of the previous field cannot be resolved if the user entered the name of
        // a data field that does not exist (anymore) in the data model
        if (previousDataField.complexType === null)
            return IScope.NULLSCOPE

        // On all subsequent levels, return the direct children of the previously specified data
        // field
        val previousType = previousDataField.complexType.complexType
        val nextLeveldDataFields = nextDataFieldsInHierarchy(previousType)
        if (nextLeveldDataFields !== null)
            return Scopes::scopeFor(nextLeveldDataFields)
        else
            return IScope.NULLSCOPE
    }

    /**
     * Convenience method to retrieve the data fields of the next level of a data field hierarchy
     */
    private def nextDataFieldsInHierarchy(ComplexType previousType) {
        if (previousType.isPrimitiveList)
            return null

        val nextDataFields = if (previousType.isStructure)
                (previousType as DataStructure).effectiveFields
            else if (previousType.isStructuredList)
                (previousType as ListType).dataFields

        return if (!nextDataFields.empty) nextDataFields else null
    }

    /**
     * Build scope for referred operations
     */
    private def getScopeForReferredOperations(ReferredOperationMapping mapping) {
        val microserviceMapping = mapping.microserviceMapping
        val microservice = microserviceMapping.microservice.microservice
        val operations = microservice.interfaces.map[referredOperations].flatten
        return Scopes::scopeFor(operations, [QualifiedName.create(interface.name, operation.name)],
            IScope.NULLSCOPE)
    }

    /**
     * Build scope for technology-specific protocols
     */
    private def getScopeForTechnologySpecificProtocols(TechnologySpecificProtocol protocol) {
        if (protocol.technology === null)
            return IScope.NULLSCOPE

        /*
         * Create the scope, possibly with filtering of communication types if the context is or
         * encapsulates a protocol specification
         */
        val protocolSpecification = protocol.protocolSpecification
        val forCommunicationType = if (protocolSpecification !== null)
            protocolSpecification.communicationType

        var List<Predicate<Protocol>> communicationTypeFilter = if (forCommunicationType !== null)
            #[[forCommunicationType == communicationType]]

        return DdmmUtils.getScopeForPossiblyImportedConcept(
            protocol.technology,
            null,
            Technology,
            protocol.technology.importURI,
            [protocols.toList],
            [qualifiedNameParts],
            communicationTypeFilter
        )
    }

    /**
     * Build scope for protocol data formats
     */
    private def getScopeForDataFormats(TechnologySpecificProtocol protocol) {
        if (protocol.protocol === null)
            return IScope.NULLSCOPE

        // Return scope elements, i.e., defined data formats, that exist for the protocol
        val protocolName = protocol.protocol.name
        if (protocolName === null)
            return IScope.NULLSCOPE

        val scopeElements = protocol.protocol.technology.protocols
            // We can use the first protocol we find, as protocol names are unique (ensured by
            // validator of Technology DSL) independent of communication type
            .findFirst[name == protocolName]
            .dataFormats

        return Scopes::scopeFor(scopeElements, [QualifiedName.create(it.formatName)],
            IScope.NULLSCOPE)
    }

    /**
     * Build scope for the actual microservices if the import was already specified
     */
    private def getScopeForImportedMicroservices(Import ^import) {
        if (import === null)
            return IScope.NULLSCOPE

        return DdmmUtils.getScopeForPossiblyImportedConcept(
            import,
            null,
            ServiceModel,
            import.importURI,
            [microservices.toList],
            [qualifiedNameParts]
        )
    }

    /**
     * Build scope for imported service aspects used to annotate microservices, interfaces,
     * operations, parameters, or data fields
     */
    private def getScope(TechnologySpecificImportedServiceAspect importedAspect,
        EReference reference) {
        switch (reference) {
            /* Technologies */
            case MappingPackage::Literals.TECHNOLOGY_SPECIFIC_IMPORTED_SERVICE_ASPECT__TECHNOLOGY:
                return EcoreUtil2.getContainerOfType(importedAspect, MicroserviceMapping)
                    .getScopeForAnnotatedTechnologies()

            /* Aspects */
            case MappingPackage.Literals.TECHNOLOGY_SPECIFIC_IMPORTED_SERVICE_ASPECT__ASPECT:
                return importedAspect.getScopeForImportedAspect()

            /* Properties */
            case TechnologyPackage.Literals.TECHNOLOGY_SPECIFIC_PROPERTY_VALUE_ASSIGNMENT__PROPERTY:
                return importedAspect.getScopeForAspectProperty()
        }

        return null
    }

    /**
     * Build scope for technology-specific value assignment
     */
    private def getScope(TechnologySpecificPropertyValueAssignment assignment, EReference reference) {
        switch (reference) {
            /* Properties */
            case TechnologyPackage.Literals.TECHNOLOGY_SPECIFIC_PROPERTY_VALUE_ASSIGNMENT__PROPERTY:
                return EcoreUtil2.getContainerOfType(assignment,
                    TechnologySpecificImportedServiceAspect).getScopeForAspectProperty()
        }

        return null
    }

    /**
     * Build scope for aspect properties
     */
    private def getScopeForAspectProperty(TechnologySpecificImportedServiceAspect importedAspect) {
        return Scopes::scopeFor(importedAspect.aspect.properties)
    }

    /**
     * Build scope for aspect of imported service aspect
     */
    private def getScopeForImportedAspect(TechnologySpecificImportedServiceAspect aspect) {
        if (aspect.technology === null)
            return IScope.NULLSCOPE

        var ExchangePattern forExchangePattern
        var CommunicationType forCommunicationType
        var List<Pair<Protocol, DataFormat>> forProtocolsAndDataFormats

        /*
         * Determine the join point and relevant pointcut values depending on the container in which
         * the aspect is used
         */
        val mapping = aspect.eContainer
        val joinPoint = switch (mapping) {
            MicroserviceMapping: {
                forProtocolsAndDataFormats = mapping.effectiveProtocolsAndDataFormats
                    .values.toList

                JoinPointType.MICROSERVICES
            }
            InterfaceMapping: {
                forProtocolsAndDataFormats = mapping.effectiveProtocolsAndDataFormats
                    .values.toList

                JoinPointType.INTERFACES
            }
            OperationMapping: {
                forProtocolsAndDataFormats = mapping.effectiveProtocolsAndDataFormats
                    .values.toList

                JoinPointType.OPERATIONS
            }
            ReferredOperationMapping: {
                forProtocolsAndDataFormats = mapping.effectiveProtocolsAndDataFormats
                    .values.toList

                JoinPointType.OPERATIONS
            }
            ParameterMapping: {
                val parameter = mapping.parameter
                forCommunicationType = parameter.communicationType
                forExchangePattern = parameter.exchangePattern
                val effectiveProtocolAndDataFormat = mapping.effectiveProtocolAndDataFormat
                forProtocolsAndDataFormats = if (effectiveProtocolAndDataFormat !== null)
                        #[effectiveProtocolAndDataFormat]
                    else
                        null

                JoinPointType.PARAMETERS
            }
            TechnologySpecificDataFieldTypeMapping: {
                val parameterMapping = mapping.parameterMapping
                val effectiveProtocolAndDataFormat = parameterMapping.effectiveProtocolAndDataFormat
                forProtocolsAndDataFormats = if (effectiveProtocolAndDataFormat !== null)
                        #[effectiveProtocolAndDataFormat]
                    else
                        null

                val parameter = parameterMapping.parameter
                forCommunicationType = parameter.communicationType
                forExchangePattern = parameter.exchangePattern

                JoinPointType.DATA_FIELDS
            }
        }

        /*
         * Get the contents of the resource, i.e., the technology model, from which aspects may be
         * imported
         */
        val resourceContents = DdmmUtils.getImportedModelContents(aspect.technology.eResource,
            aspect.technology.importURI)
        if (resourceContents === null || resourceContents.empty)
            return IScope.NULLSCOPE

        /*
         * Get the relevant aspects for the determined join point and the respective pointcut values
         */
        val declaredAspectsForJoinPoint = (resourceContents.get(0) as Technology).serviceAspects
            .filter[joinPoints.contains(joinPoint)].toList
        val scopeAspects = filterMatchingAspects(declaredAspectsForJoinPoint, forExchangePattern,
            forCommunicationType, forProtocolsAndDataFormats)
        return Scopes::scopeFor(scopeAspects, [QualifiedName.create(it.qualifiedNameParts)],
            IScope.NULLSCOPE)
    }

    /**
     * Convenience method to create a scope for imports of certain types
     */
    private def getScopeForImportsOfType(EObject context, Class<? extends EObject>... types) {
        val allImports = EcoreUtil2.getContainerOfType(context, TechnologyMapping).imports
        val validImports = DdmmUtils.getImportsOfModelTypes(allImports, [it.importURI], types)
        return Scopes::scopeFor(validImports)
    }

    /**
     * Helper method to determine effective protocols and data formats of a microservice mapping
     */
    private def getEffectiveProtocolsAndDataFormats(MicroserviceMapping mapping) {
        /*
         * Try to get effective protocols and data formats from the mapping's protocol
         * specifications
         */
        val results = getEffectiveProtocolsAndDataFormats(mapping.protocols, null, null)

        /* Identify missing communication types */
        val missingCommunicationTypes = <CommunicationType> newArrayList
        if (!results.containsKey(CommunicationType.ASYNCHRONOUS))
            missingCommunicationTypes.add(CommunicationType.ASYNCHRONOUS)
        if (!results.containsKey(CommunicationType.SYNCHRONOUS))
            missingCommunicationTypes.add(CommunicationType.SYNCHRONOUS)

        if (missingCommunicationTypes.empty)
            return results

        /*
         * Complement effective protocols and data formats with the default protocols and data
         * formats of the annotated technologies for missing communication types
         */
        mapping.technologies.forEach[
            val technologyModel = DdmmUtils.getImportedModelRoot(eResource, importURI, Technology)
            missingCommunicationTypes.forEach[communicationType |
                var Protocol defaultProtocol
                var DataFormat defaultDataFormat

                defaultProtocol = technologyModel.protocols
                    .filter[it.communicationType == communicationType]
                    .findFirst[^default]

                if (defaultProtocol !== null)
                    defaultDataFormat = defaultProtocol.defaultFormat

                if (defaultProtocol !== null)
                    results.put(communicationType, {defaultProtocol -> defaultDataFormat})
            ]
        ]

        return results
    }

    /**
     * Helper method to determine effective protocols and data formats of an interface mapping
     */
    private def getEffectiveProtocolsAndDataFormats(InterfaceMapping mapping) {
        // Try to get effective protocols and data formats from the technology-specific protocol
        // specifications of the interface. If there aren't any, get effective protocols and data
        // formats from the microservice mapping.
        return getEffectiveProtocolsAndDataFormats(mapping.protocols, mapping.microserviceMapping,
            [getEffectiveProtocolsAndDataFormats])
    }

    /**
     * Helper method to determine effective protocols and data formats of an operation mapping
     */
    private def getEffectiveProtocolsAndDataFormats(OperationMapping mapping) {
        // Try to get effective protocols and data formats from the technology-specific protocol
        // specifications of the operation. If there aren't any, get effective protocols and data
        // formats from the microservice mapping.
        return getEffectiveProtocolsAndDataFormats(mapping.protocols, mapping.microserviceMapping,
            [getEffectiveProtocolsAndDataFormats])
    }

    /**
     * Helper method to determine effective protocols and data formats of a referred operation
     * mapping
     */
    private def getEffectiveProtocolsAndDataFormats(ReferredOperationMapping mapping) {
        // Try to get effective protocols and data formats from the technology-specific protocol
        // specifications of the referred operation. If there aren't any, get effective protocols
        // and data formats from the microservice mapping.
        return getEffectiveProtocolsAndDataFormats(mapping.protocols,
            mapping.microserviceMapping, [getEffectiveProtocolsAndDataFormats])
    }

    /**
     * Helper method to determine effective protocol and data format for a parameter mapping with
     * consideration of its communication type
     */
    private def getEffectiveProtocolAndDataFormat(ParameterMapping mapping) {
        // Try to get effective protocol and data format from the technology-specific protocol
        // specifications of the mapped parameter's operation mapping
        val operationProtocolsAndDataFormats = mapping.operationMapping
            .effectiveProtocolsAndDataFormats
        return operationProtocolsAndDataFormats.get(mapping.parameter.communicationType)
    }

    /**
     * Helper method to determine effective protocols and data formats from technology-specific
     * protocol specifications and possibly the containing concept, if protocol and data format
     * couldn't be determined for a communication type.
     *
     * The method takes the following type arguments:
     *     - CONTAINER: The container of the technology-specific protocol specifications.
     *
     * The function argument of the method returns for a given CONTAINER object the effective
     * protocols and data formats.
     */
    protected def <CONTAINER extends EObject> getEffectiveProtocolsAndDataFormats(
        List<TechnologySpecificProtocolSpecification> protocolSpecifications,
        CONTAINER container,
        Function<CONTAINER, Map<CommunicationType, Pair<Protocol, DataFormat>>> getFromContainer) {
        val Map<CommunicationType, Pair<Protocol, DataFormat>> results = newHashMap
        val missingCommunicationTypes = <CommunicationType> newArrayList

        for (i : 0..<2) {
            val communicationType = switch (i) {
                case 0: CommunicationType.ASYNCHRONOUS
                case 1: CommunicationType.SYNCHRONOUS
            }

            // Determine protocol and data format for a given communication from the passed list of
            // protocol specifications
            var Protocol protocol
            var DataFormat dataFormat
            var protocolSpecification = protocolSpecifications
                .findFirst[it.communicationType == communicationType]

            if (protocolSpecification !== null &&
                protocolSpecification.technologySpecificProtocol !== null &&
                protocolSpecification.technologySpecificProtocol.protocol !== null) {
                protocol = protocolSpecification.technologySpecificProtocol.protocol
                dataFormat = protocolSpecification.technologySpecificProtocol.dataFormat ?:
                    protocol.defaultFormat
            }

            if (protocol !== null)
                results.put(communicationType, {protocol -> dataFormat})
            else
                missingCommunicationTypes.add(communicationType)
        }

        // For those communication types for which no protocol and data format could be determined,
        // try to gather those from the container and add them to the list of results
        if (container !== null && getFromContainer !== null && !missingCommunicationTypes.empty) {
            val containerResults = getFromContainer.apply(container)
            containerResults.entrySet.filter[missingCommunicationTypes.contains(it.key)]
                .forEach[results.put(it.key, it.value)]
        }

        return results
    }
}