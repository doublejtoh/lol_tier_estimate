class EstimaterController < ApplicationController
    
    def index
        
    end
    
    def tier_estimate
        
       
        
        
      
    end
    
    def estimated_result
        tiers=[{tier:"브론즈",url:"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ9t46Gs4gfRCJetR1lS0d9K-wy77i9FXDd31WyFl9ai8mJTZ17GViWlw"},{tier:"실버",url:"http://cfile5.uf.tistory.com/image/2739EB3C55339AEF22DE33"},{tier:"골드",url:"http://cfile29.uf.tistory.com/image/276E983355339B6E074DAF"},{tier:"플레티넘",url:"http://cfile3.uf.tistory.com/image/2153AF3A55339BD417714D"},{tier:"다이아몬드",url:"http://cfile6.uf.tistory.com/image/256A5F3855339C680D7605"},{tier:"마스터",url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKz2DCFXJJmzxjwJvGeCzzuIuLUyQKMWOTVfBRnTNPIOlbiXw2"},{tier:"챌린저",url:"http://cfile27.uf.tistory.com/image/24726747562102862A05E8"}]
        user_tier=tiers.to_a.sample(1)
        
        
        
        user_tier.each do |x|
            @user_tier=x[:tier]        
            @tierimg_url=x[:url]
        end
        
          
        adviceforBronze=["좀더연습하셔야겠어요..","요즘 야스오를 많이하셨나보군요..?","그만 던지셔야합니다..","이쯤되면 아이디 새로 하나 파는게?..","브=실=골=플 이라고 생각하는거아니죠??"]
        adviceforSilver=["실버정도면 무난하죠...!","좀만더 노력하면 골드가 눈앞에..ㅎㅎㅎ","어때요 제가 맞췄나요..?"]
        adviceforGold=["골드라니!! 대단합니다..","좀만더 해서 플레달아봅시다!","골드1 수문장이신거 아니죠?","잘하는거 몇개만 파서 올라가보죠!! "]
        adviceforPlatinum=["플레티넘 버스로 올라가신거아니죠??","속으로 '난 이티어 아닌데'하고 생각하는 소리 들리는거같은데요..?"]
        adviceforDiamond=["다이아3 정도의 실력을 가지셨네요.","다이아하고 마스터하고 차이가 많이난다고 하네요. 분발하죠!"]
        adviceforMaster=["마스터 300점 정도의 실력을 가지셨네요. 비법을 알 수 있을까요?","중국 프로에서 많이 제의 올 것 같아요..","3번만 더이기면 챌린저 올라갈거같아요!"]
        adviceforChallenger=["프로데뷔하러가죠","페이커랑 맞라인서도 이길 수 있는 실력입니다.","주년E친추해서 버스좀요..","킹갓제너럴 챌린저"]
        advice=String.new
        user_tier.each do|x|
            if x[:tier]=="브론즈"
                     advice=adviceforBronze.sample(1)
            
                
           
                elsif x[:tier]=="실버"
                    advice=adviceforSilver.sample(1)
             
    
                elsif x[:tier]=="골드"
                    advice=adviceforGold.sample(1)
            
                elsif x[:tier]=="플레티넘"
                    advice=adviceforPlatinum.sample(1)
                
                elsif x[:tier]=="다이아몬드"
                    advice=adviceforDiamond.sample(1)
                
                elsif x[:tier]=="마스터"
                    advice=adviceforMaster.sample(1)
                    
                elsif x[:tier]=="챌린저"
                    advice=adviceforChallenger.sample(1)
            end
        end
        
        @name = params[:name]
        @advice= advice
        @urlforFowSearch = "http://fow.kr/find/"+params[:name]
        
    end
    
end
