class c_1764_1;
    integer i = -292;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1764_1;
    c_1764_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0011x001xx011x10zx0z11z01x0zxzxzxzzxzzzzzxxzzxzzxzzzxzxxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
