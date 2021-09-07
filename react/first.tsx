// Sample Component

import styled from '@emotion/styled';
import { Typography } from '@material-ui/core';
import { FC } from 'react';

type Props = {
  text: string;
  className?: string;
};

const HogeHoge: FC<Props> = ({ text, className }) => (
  <Root className={className}>
    <Border />
    <Text variant="caption">{text}</Text>
    <Border />
  </Root>
);

const Root = styled('div')();
const Text = styled(Typography)({
  color: '#fff',
});
const Border = styled('div')({
  backgroundColor: '#fff',
});

export default HogeHoge;
