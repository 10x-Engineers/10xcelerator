class c_2222_1;
    integer i = -369;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2222_1;
    c_2222_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00z0z0101x00z1z10z1x000xx11xxxxzxxzzzzzzxxzxxzxzzxzzzzzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
