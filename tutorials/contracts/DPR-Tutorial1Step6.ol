// API name: OnlineShopBackend

type Order {
	anonymous11: void { orderNumber: string /* data type role: D */ orderId: OrderId orderitemList[0,*]: OrderItem } 
}

type CustomerAccountId {
	anonymous10: void { customeraccountId: long /* data type role: D */ } 
}

type OrderItem {
	anonymous13: void { productName: string /* data type role: D */ price: string /* data type role: D */ orderitemId: OrderItemId } 
}

type Product {
	anonymous15: void { productName: string /* data type role: D */ image: string /* data type role: D */ productCategory: string /* data type role: D */ productId: ProductId } 
}

type CustomerAccount {
	anonymous9: void { name: string /* data type role: D */ address: string /* data type role: D */ customeraccountId: CustomerAccountId } 
}

type ProductId {
	anonymous16: void { productId: long /* data type role: D */ } 
}

type OrderId {
	anonymous12: void { orderId: long /* data type role: D */ } 
}

type OrderItemId {
	anonymous14: void { orderitemId: long /* data type role: D */ } 
}


// operation responsibility: POST
type createOrderRequestDTO {
	anonymous5: Order 
}

type createOrderResponseDTO {
	anonymous6: OrderId 
}

// operation responsibility: undefined
type createAccountRequestDTO {
	anonymous1: CustomerAccount 
}

type createAccountResponseDTO {
	anonymous2: CustomerAccountId 
}

// operation responsibility: PUT
type addOrderItemRequestDTO {
	anonymous7: OrderItem 
}

type addOrderItemResponseDTO {
	anonymous8: OrderItemId 
}

// operation responsibility: undefined
type readProductInformationRequestDTO {
	anonymous3[0,*]: ProductId 
}

type readProductInformationResponseDTO {
	anonymous4[0,*]: Product 
}


type SOAPFaultMessage {
	code: int
	text: string
	actor: string
	details: string
}


// interface/endpoint role: undefined
interface Customer {
RequestResponse:
	createAccount( createAccountRequestDTO )( createAccountResponseDTO ),
}
// interface/endpoint role: undefined
interface ProductCatalog {
RequestResponse:
	readProductInformation( readProductInformationRequestDTO )( readProductInformationResponseDTO ),
}
// interface/endpoint role: undefined
interface OrderBasket {
RequestResponse:
	createOrder( createOrderRequestDTO )( createOrderResponseDTO ),
	addOrderItem( addOrderItemRequestDTO )( addOrderItemResponseDTO ),
}

inputPort CustomerPort {
	location: "socket://localhost:8080" 
	protocol: soap
	interfaces: Customer
}

// sample conversion to WSDL/SOAP:
// jolie2wsdl --namespace "http://tbc.org" --portName CustomerPort --portAddr "localhost:8080" --outputFile DPR-Tutorial1Step6Customer.wsdl DPR-Tutorial1Step6.ol
// The WSDL could be viewed/analyzed at: https://www.wsdl-analyzer.com/upload

inputPort ProductCatalogPort {
	location: "socket://localhost:8080" 
	protocol: soap
	interfaces: ProductCatalog
}

// sample conversion to WSDL/SOAP:
// jolie2wsdl --namespace "http://tbc.org" --portName ProductCatalogPort --portAddr "localhost:8080" --outputFile DPR-Tutorial1Step6ProductCatalog.wsdl DPR-Tutorial1Step6.ol
// The WSDL could be viewed/analyzed at: https://www.wsdl-analyzer.com/upload

inputPort OrderBasketPort {
	location: "socket://localhost:8080" 
	protocol: soap
	interfaces: OrderBasket
}

// sample conversion to WSDL/SOAP:
// jolie2wsdl --namespace "http://tbc.org" --portName OrderBasketPort --portAddr "localhost:8080" --outputFile DPR-Tutorial1Step6OrderBasket.wsdl DPR-Tutorial1Step6.ol
// The WSDL could be viewed/analyzed at: https://www.wsdl-analyzer.com/upload


main
{
	nullProcess
}
