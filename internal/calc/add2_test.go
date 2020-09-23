// +build extratests
//
// REFERENCES:
//   - https://medium.com/tech-at-wildlife-studios/testing-golang-code-our-approach-at-wildlife-6f41e489ff36
//
// このテストは go test にて -tags=extratests が指定された時だけ実行されます.
//
// buildコメントは、以下のルールに従わないといけない
//   - package よりも前に書く
//   - package の前に空行をあける
//

package calc

import (
	"testing"
	"time"
)

func TestSuperHeavy(t *testing.T) {
	time.Sleep(3 * time.Second)

	want := uint64(300)
	x := uint32(100)
	y := uint32(200)
	ans := Add(x, y)

	if ans != want {
		t.Errorf("want: %d\tgot: %d\n", want, ans)
	}

	time.Sleep(2 * time.Second)
}
