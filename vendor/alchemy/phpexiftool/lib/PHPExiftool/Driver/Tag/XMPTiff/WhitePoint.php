<?php

/*
 * This file is part of the PHPExifTool package.
 *
 * (c) Alchemy <support@alchemy.fr>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace PHPExiftool\Driver\Tag\XMPTiff;

use JMS\Serializer\Annotation\ExclusionPolicy;
use PHPExiftool\Driver\AbstractTag;

/**
 * @ExclusionPolicy("all")
 */
class WhitePoint extends AbstractTag
{

    protected $Id = 'WhitePoint';

    protected $Name = 'WhitePoint';

    protected $FullName = 'XMP::tiff';

    protected $GroupName = 'XMP-tiff';

    protected $g0 = 'XMP';

    protected $g1 = 'XMP-tiff';

    protected $g2 = 'Image';

    protected $Type = 'rational';

    protected $Writable = true;

    protected $Description = 'White Point';

    protected $flag_List = true;

    protected $flag_Seq = true;

}
