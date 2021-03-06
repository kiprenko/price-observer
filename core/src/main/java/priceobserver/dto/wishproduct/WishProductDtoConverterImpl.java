package priceobserver.dto.wishproduct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import priceobserver.data.wishproduct.WishProduct;
import priceobserver.data.wishproduct.WishProductBuilder;
import priceobserver.dto.product.ProductDtoConverter;
import priceobserver.dto.user.UserDtoConverter;

@Component
public class WishProductDtoConverterImpl implements WishProductDtoConverter {

    private UserDtoConverter userDtoConverter;
    private ProductDtoConverter productDtoConverter;

    @Autowired
    public WishProductDtoConverterImpl(UserDtoConverter userDtoConverter, ProductDtoConverter productDtoConverter) {
        this.userDtoConverter = userDtoConverter;
        this.productDtoConverter = productDtoConverter;
    }

    @Override
    public WishProductDto convertToDto(WishProduct entity) {
        return WishProductDtoBuilder.aWishProductDto()
                .withId(entity.getId())
                .withDateAdded(entity.getDateAdded())
                .withVersion(entity.getVersion())
                .withUser(userDtoConverter.convertToDto(entity.getUser()))
                .withProduct(productDtoConverter.convertToDto(entity.getProduct()))
                .build();
    }

    @Override
    public WishProduct convertToEntity(WishProductDto dto) {
        return WishProductBuilder.aWishProduct()
                .withId(dto.getId())
                .withDateAdded(dto.getDateAdded())
                .withVersion(dto.getVersion())
                .withUser(userDtoConverter.convertToEntity(dto.getUser()))
                .withProduct(productDtoConverter.convertToEntity(dto.getProduct()))
                .build();
    }
}