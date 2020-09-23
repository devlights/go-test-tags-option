package calc

import "testing"

func TestAdd(t *testing.T) {
	x := uint32(100)
	y := uint32(200)

	ans := Add(x, y)
	if ans != uint64(300) {
		t.Errorf("want: %d\tgot: %d\n", uint64(300), ans)
	}
}
