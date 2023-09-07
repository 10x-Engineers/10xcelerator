class c_112_1;
    integer i = -17;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_112_1;
    c_112_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1z0z1xz111x00z1000001z0x00zz1xzzxxzzxzxxzxzzxzxzzxxxzzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
