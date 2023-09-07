class c_2661_1;
    integer i = -442;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2661_1;
    c_2661_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx1zx1zz1000x0zz0z1zzxz1zx11zzxxzxzzzzzxxzzxzxxxzxxzxxxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
