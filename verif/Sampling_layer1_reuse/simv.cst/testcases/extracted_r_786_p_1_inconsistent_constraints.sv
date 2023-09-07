class c_786_1;
    integer i = -129;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_786_1;
    c_786_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz111xz1xxx1z1z1000000z01z1z11x0zxzzzxzzzzxzzxxxzzxxzxxxxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
