class c_392_1;
    integer i = -64;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_392_1;
    c_392_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z01zxz1z01z11x10z0z1z00010zxz0xzzzzxxzxzxzzzxxxzzzzzzzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram