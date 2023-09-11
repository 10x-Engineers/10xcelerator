class c_196_1;
    integer i = -31;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_196_1;
    c_196_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111xx110zz0z00x0101z0101xx11z0z1zzxzxxzxxzxzzzxzzxxzxxzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
