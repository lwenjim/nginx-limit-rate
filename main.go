package main

import (
	"time"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "pong" + time.Now().Format("2006-01-02 15:04:05"),
		})
	})
	_ = r.Run()
}
