class c_518_1;
    integer i = -85;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_518_1;
    c_518_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000x1zxzxzxz11x10xx001zz11zz1z0zxzxxxxxzzzzxzzxxxzxxxzzzxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
