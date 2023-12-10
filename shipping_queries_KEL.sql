USE shipping;

SELECT containerID
FROM containers
WHERE containerWeight > 40000;

SELECT shipID
FROM containers
WHERE containerLength = 40;

SELECT captainName
FROM ports p JOIN ships s ON p.portName = s.homePort
WHERE country = 'Netherlands';

SELECT shipName
FROM ports p JOIN ships s ON p.portName = s.homePort
WHERE city = 'Rotterdam';

SELECT shipName, displacement
FROM ports p JOIN ships s ON p.portName = s.homePort
WHERE city = 'Barcelona';

SELECT portName
FROM ports p JOIN ships s ON p.portName = s.homePort
WHERE captainName = 'BMO';

SELECT portName, captainName, city
FROM ports p JOIN ships s ON p.portName = s.homePort
WHERE shipName = 'Dory';

SELECT DISTINCT shipName, numCrew, yearBuilt
FROM ships, ports
WHERE homePort IN
	(SELECT portName
    FROM ports
    WHERE country = 'Spain');
    
SELECT containerID, (containerHeight * containerWidth * containerLength) AS containerVolume
FROM containers
WHERE containerID = 'P080';

SELECT homePort, SUM(displacement) as totalDisplacement
FROM ships
GROUP BY homePort;
