let currentPage = 0;
const pageSize = 20;
let isLoading = false;
let totalPages = 1; // 초기값, 첫 로드 시 업데이트

async function fetchPlaces() {
    if (isLoading || currentPage >= totalPages) return; // 중복 호출 방지
    isLoading = true;

    try {
        const response = await fetch(`/api/place?page=${currentPage}&size=${pageSize}`);
        if (!response.ok) throw new Error("데이터를 불러오는 데 실패했습니다.");

        const data = await response.json();
        totalPages = data.page.totalPages; // 전체 페이지 수 업데이트
        renderPlaces(data.content); // 데이터 추가 렌더링

        currentPage++; // 다음 페이지로 이동
    } catch (error) {
        console.error("Error fetching places:", error);
    } finally {
        isLoading = false;
    }
}

function renderPlaces(places) {
    const placeList = document.getElementById("place-list");


    places.forEach(place => {
        const item = document.createElement("div");
        item.className = "col-12 col-md-6 col-lg-4"; // 반응형 레이아웃 적용

        // ✅ 글자수 제한 (최대 50자, 초과 시 "..." 표시)
        const truncatedDescription = place.description.length > 50
            ? place.description.substring(0, 50) + "..."
            : place.description;

        item.innerHTML = `
            <a href="./place/${place.id}" class="text-decoration-none">
                <div class="card mb-3">
                    <img src="${place.thumbnail}" class="card-img-top" height="250"  alt="${place.name}">
                    <div class="card-body">
                        <h5 class="card-title">${place.name}</h5>
                        <p class="card-text">${truncatedDescription}</p>
                    </div>
                </div>
            </a>
        `;
        placeList.appendChild(item);
    });
}

// 무한 스크롤 감지
window.addEventListener("scroll", () => {
    if (window.innerHeight + window.scrollY >= document.body.offsetHeight - 200) {
        fetchPlaces();
    }
});

// 초기 데이터 로드
fetchPlaces();
