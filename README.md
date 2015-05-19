# TableCellAnim
Example how to UIViewAnimation on table view cell

## How to use
```swift
func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        cell.frame = CGRectMake(scRect.width, cell.frame.origin.y, cell.frame.size.width, cell.frame.size.height)
        
        UIView.animateWithDuration(1.0, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.6, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            cell.frame = CGRectMake(0, cell.frame.origin.y, cell.frame.size.width, cell.frame.size.height)
            }, completion: { finished in
        
        })
    }
```

## Contact

Anak Mirasing

- https://github.com/igroomgrim
- https://twitter.com/igroomgrim
- http://www.igroomgrim.com/
- thaihooligan@hotmail.com
