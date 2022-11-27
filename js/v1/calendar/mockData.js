const ym0 = moment().format('YYYY-MM');
const ym1 = moment().subtract(1, 'month').format('YYYY-MM');
const ym2 = moment().add(1, 'month').format('YYYY-MM');
export const mockData = [
    {
        time: ym0 + '-13T21:00:00 Z',
        cls: 'bg-orange-alt',
        desc: 'School Day'
    },
    {
        time: ym0 + '-13T22:00:00 Z',
        cls: 'bg-green-alt',
        desc: 'Quarterly Exam'
    },
    {
        time: ym0 + '-18T21:00:00 Z',
        cls: 'bg-red-alt',
        desc: 'Sports Meet' 
    },
    {
        time: ym0 + '-18T22:00:00 Z',
        cls: 'bg-cyan-alt',
        desc: 'Annual Day'
    },
    {
        time: ym0 + '-18T23:00:00 Z',
        cls: 'bg-purple-alt',
        desc: 'Mid Term II'
    },
    {
        time: ym0 + '-19T20:00:00 Z',
        cls: 'bg-sky-blue-alt',
        desc: 'Alumni Association Meet'
    },
    {
        time: ym0 + '-19T19:00:00 Z',
        cls: 'bg-orange-alt',
        desc: 'PTA Conference'
    },
    {
        time: ym1 + '-02T20:00:00 Z',
        cls: 'bg-orange-alt',
        desc: 'Govt Holiday'
    },
    {
        time: ym1 + '-03T21:00:00 Z',
        cls: 'bg-sky-blue-alt',
        desc: 'Physics Test'
    },
    {
        time: ym1 + '-03T18:00:00 Z',
        cls: 'bg-orange-alt',
        desc: 'Football Tournament'
    },
    {
        time: ym2 + '-02T19:00:00 Z',
        cls: 'bg-purple-alt',
        desc: 'Final day'
    }
];