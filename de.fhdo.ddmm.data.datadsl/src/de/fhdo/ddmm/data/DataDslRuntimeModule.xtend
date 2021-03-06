/*
 * generated by Xtext 2.12.0
 */
package de.fhdo.ddmm.data

import de.fhdo.ddmm.data.scoping.DataDslScopeProvider
import org.eclipse.xtext.resource.IDefaultResourceDescriptionStrategy
import de.fhdo.ddmm.data.validation.DataDslNamesAreUniqueValidationHelper
import org.eclipse.xtext.validation.INamesAreUniqueValidationHelper

/**
 * Use this class to register components to be used at runtime / without the Equinox extension
 * registry.
 *
 * @author <a href="mailto:florian.rademacher@fh-dortmund.de">Florian Rademacher</a>
 */
class DataDslRuntimeModule extends AbstractDataDslRuntimeModule {
    override bindIScopeProvider() {
         DataDslScopeProvider
    }

    def Class<? extends IDefaultResourceDescriptionStrategy>
       bindIDefaultResourceDescriptionStrategy() {
        DataDslResourceDescriptionStrategy
    }

    def Class<? extends INamesAreUniqueValidationHelper> bindINamesAreUniqueValidationHelper() {
        DataDslNamesAreUniqueValidationHelper
    }
}
