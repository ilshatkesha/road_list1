--
-- ���� ������������ � ������� SQLiteStudio v3.4.4 � �� ��� 5 17:40:28 2024
--
-- �������������� ��������� ������: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- �������: ����������
CREATE TABLE IF NOT EXISTS ���������� ("����� � ������" TEXT, "���.�����" TEXT, ������� TEXT, �������������� TEXT REFERENCES ����� (�����) ON DELETE NO ACTION ON UPDATE NO ACTION MATCH SIMPLE);
INSERT INTO ���������� ("����� � ������", "���.�����", �������, ��������������) VALUES ('���', '959', '��������', '��������');

-- �������: �����
CREATE TABLE IF NOT EXISTS ����� (����� TEXT PRIMARY KEY);
INSERT INTO ����� (�����) VALUES ('��������');
INSERT INTO ����� (�����) VALUES ('��������');

-- �������: ����������
CREATE TABLE IF NOT EXISTS ���������� (������� TEXT PRIMARY KEY, "��� ��������" TEXT, ����� TEXT, �� TEXT, "���� ��" TEXT, "��������� �����" TEXT, ��������������� TEXT);
INSERT INTO ���������� (�������, "��� ��������", �����, ��, "���� ��", "��������� �����", ���������������) VALUES ('����������', '������ ���������', '125-00-00-00', '123123', '1488', '228', '��������');
INSERT INTO ���������� (�������, "��� ��������", �����, ��, "���� ��", "��������� �����", ���������������) VALUES ('������', '������ ���������', '123', '123', '13', '123', '123');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
