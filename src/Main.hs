module Main where

import Core
import Web

import Control.Concurrent (threadDelay)

serverLoop :: Broadcaster -> IO ()
serverLoop broadcast = do
	-- XXX: just stubbed out atm, wait 1 second then broadcast an empty world
	threadDelay 1000000
	broadcast $ World [] []
	serverLoop broadcast

main = do
	withServerDo $ \broadcast -> do
		putStrLn "Web server up and running"
		serverLoop broadcast
