from fastapi import APIRouter, status

router = APIRouter(tags=["index"],)


@router.get("/", status_code = status.HTTP_200_OK)
def index():
    """
    Health Check - Check if the API is running.
    """
    return {"Message":"Api is running"}