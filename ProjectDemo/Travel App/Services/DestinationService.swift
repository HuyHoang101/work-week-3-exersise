//
//  DestinationService.swift
//  ProjectDemo
//
//  Created by hoang.nguyenh on 12/24/25.
//

import Foundation

struct DestinationService {
    static let sharedData: [Destination] = [
        Destination(
            name: "Vịnh Hạ Long kjsd fweoijlkawe jnfrlae kilaewknawe àew",
            location: "Quảng Ninh ádfaihjb. iúhdakuh áhdkada s ấDf f a ádf sdf g ds ds fds dsf sd fds dfs fsd ds f dsf dsfs sdf ds sdf ",
            imageName: "vinhhalong",
            description: "Vịnh Hạ Long, nằm ở bờ tây vịnh Bắc Bộ, là một trong những kỳ quan thiên nhiên thế giới được UNESCO công nhận nhiều lần. Với hàng nghìn hòn đảo đá vôi kỳ vĩ, mỗi hòn đảo mang một hình thù khác nhau như hòn Trống Mái, hòn Đỉnh Hương, nơi đây tạo nên một bức tranh thủy mặc khổng lồ giữa biển khơi. \n\nDu khách có thể trải nghiệm lênh đênh trên những du thuyền hạng sang, tham quan hang Sửng Sốt với những khối thạch nhũ lung linh, hay hang Đầu Gỗ huyền bí. Đối với những người yêu thích vận động, chèo thuyền kayak qua các hang luồn hoặc leo lên đỉnh núi Ti Tốp để phóng tầm mắt bao quát toàn vịnh là những hoạt động không thể bỏ qua. Buổi tối trên vịnh là thời gian tuyệt vời để thưởng thức hải sản tươi sống và ngắm nhìn bầu trời sao yên tĩnh giữa mênh mông sóng nước.",
            isFavorite: false
        ),
        Destination(
            name: "Phố Cổ Hội An",
            location: "Quảng Nam",
            imageName: "hoian",
            description: "Hội An là một đô thị cổ nằm ở hạ lưu sông Thu Bồn, thuộc đồng bằng ven biển tỉnh Quảng Nam. Phố cổ Hội An ngày nay là một hình mẫu đặc biệt về thương cảng truyền thống ở Đông Nam Á được bảo tồn nguyên vẹn. \n\nKhi dạo bước trên những con phố nhỏ, bạn sẽ bị mê hoặc bởi những ngôi nhà tường vàng kiến trúc kiểu Nhật, Hoa xen lẫn phương Tây. Những cửa hiệu may mặc thủ công, những tiệm đèn lồng thủ công rực rỡ sắc màu tạo nên không gian hoài cổ khó quên. Đặc biệt, vào đêm rằm hàng tháng, cả khu phố tắt hết điện và chỉ thắp sáng bằng đèn lồng, tạo nên một khung cảnh vô cùng lãng mạn. Đừng quên thử món Cao Lầu chính gốc, cơm gà bà Buội và đi thuyền thả hoa đăng trên sông Hoài để cầu nguyện bình an cho gia đình.",
            isFavorite: true
        ),
        Destination(
            name: "Đảo Ngọc Phú Quốc",
            location: "Kiên Giang",
            imageName: "phuquoc",
            description: "Phú Quốc được mệnh danh là Đảo Ngọc nhờ sự giàu có của thiên nhiên và tiềm năng du lịch dồi dào. Đây là hòn đảo lớn nhất Việt Nam với những bãi biển cát trắng mịn màng như kem, làn nước trong xanh thấy tận đáy như Bãi Sao, Bãi Khem hay Bãi Trường. \n\nNgoài vẻ đẹp biển đảo, Phú Quốc còn nổi tiếng với các làng nghề truyền thống lâu đời như nhà máy sản xuất nước mắm cốt cá cơm, các vườn tiêu xanh mướt và các cơ sở nuôi cấy ngọc trai cao cấp. Du khách cũng có thể ghé thăm di tích lịch sử Nhà tù Phú Quốc để tìm hiểu về quá khứ hào hùng của dân tộc. Hiện nay, với sự xuất hiện của các khu vui chơi giải trí hàng đầu thế giới và cáp treo hòn Thơm - cáp treo vượt biển dài nhất thế giới, Phú Quốc thực sự là điểm đến đẳng cấp cho mọi lứa tuổi.",
            isFavorite: false
        ),
        Destination(
            name: "Đà Lạt Sương Mù",
            location: "Lâm Đồng",
            imageName: "dalat",
            description: "Đà Lạt nằm trên cao nguyên Lâm Viên, được người Pháp khám phá và xây dựng thành nơi nghỉ dưỡng từ thế kỷ trước. Với độ cao 1.500m so với mực nước biển, Đà Lạt có khí hậu miền ôn đới mát mẻ quanh năm, là 'thành phố của ngàn hoa' và những bản tình ca lãng mạn. \n\nNhững điểm tham quan kinh điển như hồ Xuân Hương, vườn hoa Thành Phố, hay Dinh Bảo Đại luôn thu hút đông đảo du khách. Ngoài ra, Đà Lạt còn là thiên đường của những quán cà phê có thiết kế độc đáo và các khu du lịch canh nông nơi bạn có thể tự tay hái dâu tây. Nếu bạn thích cảm giác mạnh, những chuyến vượt thác tại thác Datanla hay chinh phục đỉnh Langbiang hùng vĩ sẽ là lựa chọn tuyệt vời. Khi đêm xuống, chợ đêm Đà Lạt với những món ăn đường phố nóng hổi như bánh tráng nướng, sữa đậu nành sẽ làm ấm lòng bất kỳ vị khách nào giữa cái se lạnh của phố núi.",
            isFavorite: false
        ),
        Destination(
            name: "Cố Đô Huế",
            location: "Thừa Thiên Huế",
            imageName: "hue",
            description: "Huế từng là kinh đô của triều đại nhà Nguyễn trong hơn một thế kỷ, nơi đây lưu giữ kho tàng di sản văn hóa vật thể và phi vật thể quý báu. Quần thể di tích Cố đô Huế với Hoàng Thành, Tử Cấm Thành và hệ thống lăng tẩm uy nghi của các vị vua (như lăng Khải Định, lăng Minh Mạng) là minh chứng cho một thời kỳ rực rỡ. \n\nDòng sông Hương thơ mộng chia đôi thành phố, nơi có chùa Thiên Mụ cổ kính soi bóng. Một trong những trải nghiệm đặc sắc nhất tại đây là nghe ca Huế trên thuyền rồng vào ban đêm, cảm nhận nhịp sống chậm rãi và tao nhã của người dân cố đô. Ẩm thực Huế cũng là một điểm nhấn khó phai với sự tinh tế trong cách chế biến và trình bày, từ những món ăn dân dã như cơm hến, bánh bèo, bánh nậm đến những món ngự thiện cung đình sang trọng.",
            isFavorite: false
        ),
        Destination(
            name: "Sapa Vùng Cao",
            location: "Lào Cai",
            imageName: "sapa",
            description: "Sapa là một thị trấn vùng cao xinh đẹp thuộc tỉnh Lào Cai, nơi có đỉnh Fansipan cao 3.143m được ví như 'Nóc nhà Đông Dương'. Cảnh sắc thiên nhiên Sapa kết hợp với sức sáng tạo của con người tạo nên những bức tranh ruộng bậc thang uốn lượn như những bậc thang lên thiên đường, đẹp nhất vào mùa nước đổ hoặc mùa lúa chín vàng. \n\nKhám phá Sapa, bạn sẽ có cơ hội tìm hiểu nét văn hóa đặc sắc của các dân tộc thiểu số như H'Mông, Dao, Tày thông qua các bản làng như Cát Cát, Tả Van. Chợ tình Sapa vào mỗi tối thứ Bảy là nơi gặp gỡ, giao duyên của những chàng trai cô gái vùng cao với tiếng khèn lá vang vọng núi rừng. Đừng quên thưởng thức các món nướng đặc sản núi rừng và món lẩu cá tầm tuyệt hảo giữa không gian mù sương của thị trấn mây mù này.",
            isFavorite: true
        ),
        Destination(
            name: "Tràng An Ninh Bình",
            location: "Ninh Bình",
            imageName: "ninhbinh",
            description: "Ninh Bình là nơi hội tụ của các giá trị lịch sử và vẻ đẹp thiên nhiên kỳ thú. Quần thể danh thắng Tràng An đã được UNESCO công nhận là di sản hỗn hợp duy nhất tại Việt Nam. Ngồi trên những chiếc thuyền nhỏ do người dân địa phương chèo, bạn sẽ được đi qua hệ thống hàng chục hang động tự nhiên xuyên qua lòng các núi đá vôi hàng triệu năm tuổi. \n\nNgay bên cạnh là Tam Cốc - Bích Động, nơi được mệnh danh là 'Hạ Long trên cạn'. Nếu bạn yêu thích lịch sử, Cố đô Hoa Lư - kinh đô đầu tiên của nhà nước phong kiến tập quyền Việt Nam - sẽ đưa bạn trở về quá khứ đầy oai hùng. Ngoài ra, chùa Bái Đính với những kỷ lục về tượng Phật bằng đồng và hành lang La Hán dài nhất Đông Nam Á cũng là điểm đến tâm linh không thể bỏ qua đối với khách hành hương.",
            isFavorite: false
        ),
        Destination(
            name: "Mũi Né Phan Thiết",
            location: "Bình Thuận",
            imageName: "muine",
            description: "Mũi Né là một trung tâm du lịch biển nổi tiếng với những đồi cát trắng và vàng mênh mông như sa mạc nhỏ ngay cạnh bờ biển xanh. Đây là điểm đến lý tưởng cho những ai yêu thích các môn thể thao mạo hiểm trên biển như lướt ván diều, lướt ván buồm do điều kiện gió vô cùng thuận lợi. \n\nHành trình khám phá Mũi Né thường bắt đầu bằng việc đi xe jeep chinh phục những đồi cát bay lúc bình minh, sau đó ghé thăm Suối Tiên - một dòng suối nhỏ chảy len lỏi giữa những vách đá vôi đỏ rực tạo nên khung cảnh như ở hành tinh khác. Làng chài Mũi Né vào buổi sáng sớm là nơi bạn có thể tận mắt chứng kiến cảnh buôn bán hải sản nhộn nhịp của ngư dân và thưởng thức hải sản tươi ngon với giá cực kỳ bình dân. Sự kết hợp giữa cát, nắng, gió và biển tạo nên sức hút khó cưỡng cho vùng đất duyên hải miền Trung này.",
            isFavorite: false
        )
    ]
}
