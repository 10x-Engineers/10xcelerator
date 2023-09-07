class c_441_1;
    integer i = 441;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_441_1;
    c_441_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001z010xz101x11000z0z001111xxxzxzzzzxxzxzzxzzzxzxxxxxxxxzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
