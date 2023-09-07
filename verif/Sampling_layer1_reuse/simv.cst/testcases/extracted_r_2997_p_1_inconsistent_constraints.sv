class c_2997_1;
    integer i = -498;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2997_1;
    c_2997_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xz01z0010z0xx101z0x0011101x1zxzxzxxxxzxxxzzxxzzxzzzxzxzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
