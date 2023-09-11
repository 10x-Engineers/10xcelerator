class c_3142_1;
    integer i = -522;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3142_1;
    c_3142_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000001zxz01xxx010xx00xzxx00x0z1zzzxxxzxzxxxxxxzzzzzzzxxxxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
