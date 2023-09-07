class c_1713_1;
    integer i = -284;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1713_1;
    c_1713_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x00zzx11z1xz1xx1000000zx00111x1xxzzxxzzzzzzxxzzzzxxzxxzxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
