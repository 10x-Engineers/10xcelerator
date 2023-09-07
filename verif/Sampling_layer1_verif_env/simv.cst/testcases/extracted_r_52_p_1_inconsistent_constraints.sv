class c_52_1;
    integer i = -7;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_52_1;
    c_52_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11zz0zz1zxx11x1111x01xz1zx00z1zxxxzxzxzzxxzxzzxxzzzzxzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
