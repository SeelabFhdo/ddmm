/**
 */
package de.fhdo.ddmm.service.intermediate;

import de.fhdo.ddmm.data.intermediate.IntermediateImport;
import de.fhdo.ddmm.data.intermediate.IntermediateType;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Imported Technology Specific Type</b></em>'.
 * <!-- end-user-doc -->
 *
 * <!-- begin-model-doc -->
 * *
 * Imported technology-specific type
 * <!-- end-model-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link de.fhdo.ddmm.service.intermediate.IntermediateImportedTechnologySpecificType#getQualifiedName <em>Qualified Name</em>}</li>
 *   <li>{@link de.fhdo.ddmm.service.intermediate.IntermediateImportedTechnologySpecificType#getImport <em>Import</em>}</li>
 * </ul>
 *
 * @see de.fhdo.ddmm.service.intermediate.IntermediatePackage#getIntermediateImportedTechnologySpecificType()
 * @model
 * @generated
 */
public interface IntermediateImportedTechnologySpecificType extends IntermediateType {
    /**
     * Returns the value of the '<em><b>Qualified Name</b></em>' attribute.
     * <!-- begin-user-doc -->
     * <p>
     * If the meaning of the '<em>Qualified Name</em>' attribute isn't clear,
     * there really should be more of a description here...
     * </p>
     * <!-- end-user-doc -->
     * @return the value of the '<em>Qualified Name</em>' attribute.
     * @see #setQualifiedName(String)
     * @see de.fhdo.ddmm.service.intermediate.IntermediatePackage#getIntermediateImportedTechnologySpecificType_QualifiedName()
     * @model unique="false"
     * @generated
     */
    String getQualifiedName();

    /**
     * Sets the value of the '{@link de.fhdo.ddmm.service.intermediate.IntermediateImportedTechnologySpecificType#getQualifiedName <em>Qualified Name</em>}' attribute.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @param value the new value of the '<em>Qualified Name</em>' attribute.
     * @see #getQualifiedName()
     * @generated
     */
    void setQualifiedName(String value);

    /**
     * Returns the value of the '<em><b>Import</b></em>' reference.
     * <!-- begin-user-doc -->
     * <p>
     * If the meaning of the '<em>Import</em>' reference isn't clear,
     * there really should be more of a description here...
     * </p>
     * <!-- end-user-doc -->
     * @return the value of the '<em>Import</em>' reference.
     * @see #setImport(IntermediateImport)
     * @see de.fhdo.ddmm.service.intermediate.IntermediatePackage#getIntermediateImportedTechnologySpecificType_Import()
     * @model
     * @generated
     */
    IntermediateImport getImport();

    /**
     * Sets the value of the '{@link de.fhdo.ddmm.service.intermediate.IntermediateImportedTechnologySpecificType#getImport <em>Import</em>}' reference.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @param value the new value of the '<em>Import</em>' reference.
     * @see #getImport()
     * @generated
     */
    void setImport(IntermediateImport value);

} // IntermediateImportedTechnologySpecificType
