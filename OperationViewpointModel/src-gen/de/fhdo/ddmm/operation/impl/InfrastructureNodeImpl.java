/**
 */
package de.fhdo.ddmm.operation.impl;

import de.fhdo.ddmm.operation.BasicEndpoint;
import de.fhdo.ddmm.operation.InfrastructureNode;
import de.fhdo.ddmm.operation.OperationModel;
import de.fhdo.ddmm.operation.OperationPackage;

import de.fhdo.ddmm.technology.InfrastructureTechnology;

import java.util.Collection;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Infrastructure Node</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link de.fhdo.ddmm.operation.impl.InfrastructureNodeImpl#getInfrastructureTechnology <em>Infrastructure Technology</em>}</li>
 *   <li>{@link de.fhdo.ddmm.operation.impl.InfrastructureNodeImpl#getEndpoints <em>Endpoints</em>}</li>
 *   <li>{@link de.fhdo.ddmm.operation.impl.InfrastructureNodeImpl#getOperationModel <em>Operation Model</em>}</li>
 * </ul>
 *
 * @generated
 */
public class InfrastructureNodeImpl extends OperationNodeImpl implements InfrastructureNode {
    /**
     * The cached value of the '{@link #getInfrastructureTechnology() <em>Infrastructure Technology</em>}' reference.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see #getInfrastructureTechnology()
     * @generated
     * @ordered
     */
    protected InfrastructureTechnology infrastructureTechnology;

    /**
     * The cached value of the '{@link #getEndpoints() <em>Endpoints</em>}' containment reference list.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see #getEndpoints()
     * @generated
     * @ordered
     */
    protected EList<BasicEndpoint> endpoints;

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    protected InfrastructureNodeImpl() {
        super();
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
    protected EClass eStaticClass() {
        return OperationPackage.Literals.INFRASTRUCTURE_NODE;
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public InfrastructureTechnology getInfrastructureTechnology() {
        if (infrastructureTechnology != null && infrastructureTechnology.eIsProxy()) {
            InternalEObject oldInfrastructureTechnology = (InternalEObject)infrastructureTechnology;
            infrastructureTechnology = (InfrastructureTechnology)eResolveProxy(oldInfrastructureTechnology);
            if (infrastructureTechnology != oldInfrastructureTechnology) {
                if (eNotificationRequired())
                    eNotify(new ENotificationImpl(this, Notification.RESOLVE, OperationPackage.INFRASTRUCTURE_NODE__INFRASTRUCTURE_TECHNOLOGY, oldInfrastructureTechnology, infrastructureTechnology));
            }
        }
        return infrastructureTechnology;
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public InfrastructureTechnology basicGetInfrastructureTechnology() {
        return infrastructureTechnology;
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public void setInfrastructureTechnology(InfrastructureTechnology newInfrastructureTechnology) {
        InfrastructureTechnology oldInfrastructureTechnology = infrastructureTechnology;
        infrastructureTechnology = newInfrastructureTechnology;
        if (eNotificationRequired())
            eNotify(new ENotificationImpl(this, Notification.SET, OperationPackage.INFRASTRUCTURE_NODE__INFRASTRUCTURE_TECHNOLOGY, oldInfrastructureTechnology, infrastructureTechnology));
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public EList<BasicEndpoint> getEndpoints() {
        if (endpoints == null) {
            endpoints = new EObjectContainmentWithInverseEList<BasicEndpoint>(BasicEndpoint.class, this, OperationPackage.INFRASTRUCTURE_NODE__ENDPOINTS, OperationPackage.BASIC_ENDPOINT__INFRASTRUCTURE_NODE);
        }
        return endpoints;
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public OperationModel getOperationModel() {
        if (eContainerFeatureID() != OperationPackage.INFRASTRUCTURE_NODE__OPERATION_MODEL) return null;
        return (OperationModel)eContainer();
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public OperationModel basicGetOperationModel() {
        if (eContainerFeatureID() != OperationPackage.INFRASTRUCTURE_NODE__OPERATION_MODEL) return null;
        return (OperationModel)eInternalContainer();
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public NotificationChain basicSetOperationModel(OperationModel newOperationModel, NotificationChain msgs) {
        msgs = eBasicSetContainer((InternalEObject)newOperationModel, OperationPackage.INFRASTRUCTURE_NODE__OPERATION_MODEL, msgs);
        return msgs;
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public void setOperationModel(OperationModel newOperationModel) {
        if (newOperationModel != eInternalContainer() || (eContainerFeatureID() != OperationPackage.INFRASTRUCTURE_NODE__OPERATION_MODEL && newOperationModel != null)) {
            if (EcoreUtil.isAncestor(this, newOperationModel))
                throw new IllegalArgumentException("Recursive containment not allowed for " + toString());
            NotificationChain msgs = null;
            if (eInternalContainer() != null)
                msgs = eBasicRemoveFromContainer(msgs);
            if (newOperationModel != null)
                msgs = ((InternalEObject)newOperationModel).eInverseAdd(this, OperationPackage.OPERATION_MODEL__INFRASTRUCTURE_NODES, OperationModel.class, msgs);
            msgs = basicSetOperationModel(newOperationModel, msgs);
            if (msgs != null) msgs.dispatch();
        }
        else if (eNotificationRequired())
            eNotify(new ENotificationImpl(this, Notification.SET, OperationPackage.INFRASTRUCTURE_NODE__OPERATION_MODEL, newOperationModel, newOperationModel));
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @SuppressWarnings("unchecked")
    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case OperationPackage.INFRASTRUCTURE_NODE__ENDPOINTS:
                return ((InternalEList<InternalEObject>)(InternalEList<?>)getEndpoints()).basicAdd(otherEnd, msgs);
            case OperationPackage.INFRASTRUCTURE_NODE__OPERATION_MODEL:
                if (eInternalContainer() != null)
                    msgs = eBasicRemoveFromContainer(msgs);
                return basicSetOperationModel((OperationModel)otherEnd, msgs);
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case OperationPackage.INFRASTRUCTURE_NODE__ENDPOINTS:
                return ((InternalEList<?>)getEndpoints()).basicRemove(otherEnd, msgs);
            case OperationPackage.INFRASTRUCTURE_NODE__OPERATION_MODEL:
                return basicSetOperationModel(null, msgs);
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (eContainerFeatureID()) {
            case OperationPackage.INFRASTRUCTURE_NODE__OPERATION_MODEL:
                return eInternalContainer().eInverseRemove(this, OperationPackage.OPERATION_MODEL__INFRASTRUCTURE_NODES, OperationModel.class, msgs);
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case OperationPackage.INFRASTRUCTURE_NODE__INFRASTRUCTURE_TECHNOLOGY:
                if (resolve) return getInfrastructureTechnology();
                return basicGetInfrastructureTechnology();
            case OperationPackage.INFRASTRUCTURE_NODE__ENDPOINTS:
                return getEndpoints();
            case OperationPackage.INFRASTRUCTURE_NODE__OPERATION_MODEL:
                if (resolve) return getOperationModel();
                return basicGetOperationModel();
        }
        return super.eGet(featureID, resolve, coreType);
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @SuppressWarnings("unchecked")
    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case OperationPackage.INFRASTRUCTURE_NODE__INFRASTRUCTURE_TECHNOLOGY:
                setInfrastructureTechnology((InfrastructureTechnology)newValue);
                return;
            case OperationPackage.INFRASTRUCTURE_NODE__ENDPOINTS:
                getEndpoints().clear();
                getEndpoints().addAll((Collection<? extends BasicEndpoint>)newValue);
                return;
            case OperationPackage.INFRASTRUCTURE_NODE__OPERATION_MODEL:
                setOperationModel((OperationModel)newValue);
                return;
        }
        super.eSet(featureID, newValue);
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case OperationPackage.INFRASTRUCTURE_NODE__INFRASTRUCTURE_TECHNOLOGY:
                setInfrastructureTechnology((InfrastructureTechnology)null);
                return;
            case OperationPackage.INFRASTRUCTURE_NODE__ENDPOINTS:
                getEndpoints().clear();
                return;
            case OperationPackage.INFRASTRUCTURE_NODE__OPERATION_MODEL:
                setOperationModel((OperationModel)null);
                return;
        }
        super.eUnset(featureID);
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case OperationPackage.INFRASTRUCTURE_NODE__INFRASTRUCTURE_TECHNOLOGY:
                return infrastructureTechnology != null;
            case OperationPackage.INFRASTRUCTURE_NODE__ENDPOINTS:
                return endpoints != null && !endpoints.isEmpty();
            case OperationPackage.INFRASTRUCTURE_NODE__OPERATION_MODEL:
                return basicGetOperationModel() != null;
        }
        return super.eIsSet(featureID);
    }

} //InfrastructureNodeImpl