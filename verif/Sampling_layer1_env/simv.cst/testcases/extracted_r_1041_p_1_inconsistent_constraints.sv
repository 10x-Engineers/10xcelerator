class c_1041_1;
    integer i = -172;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1041_1;
    c_1041_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx000x0001zxxx110zz0zzx0z101zx1zzzxzxzxxxzxxzxxzxzxzzxzxxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
