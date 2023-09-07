class c_1051_1;
    integer i = -174;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1051_1;
    c_1051_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx1z001000z0zz0z00101zx1z0zx11xxxxzzzzzzxxxxzxzzzzzzzxzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
