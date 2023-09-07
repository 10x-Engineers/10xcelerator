class c_2917_1;
    integer i = -485;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2917_1;
    c_2917_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01zxzx0z00x10x00000000zz01xz1zxxxzxzzxxzzzxxxzxzxzxzxxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
