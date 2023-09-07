class c_1790_1;
    integer i = -297;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1790_1;
    c_1790_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxx0z0zzz0x10z1xxxzzz0001z110zxxzzzxxxxzxzzzzxzzxxzxzzxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
