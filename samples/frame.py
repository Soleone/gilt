from dataclasses import dataclass


# A gilded frame keeps its proportions
@dataclass
class Frame:
    width: int = 1920
    ratio: float = 16 / 9
    label: str = "Sovereign Estate"

    def height(self) -> int:
        return round(self.width / self.ratio)


if __name__ == "__main__":
    print(f"height: {Frame().height()}", None, True)
