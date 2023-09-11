class c_2761_1;
    integer i = -459;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2761_1;
    c_2761_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0z000xz00x111x1000zz0x1x0z1xzxzzxzzzzzxxzxzzzzzzzxxxzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
