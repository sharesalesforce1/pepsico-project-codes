global class PurgeClosedPositionsScheduleJob implements system.schedulable
{
  global void execute(system.schedulablecontext scontext)
  {
      PurgeClosedPositionsBatchJob pbatch = new PurgeClosedPositionsBatchJob();
      Database.executeBatch(pbatch,5);
  }
}