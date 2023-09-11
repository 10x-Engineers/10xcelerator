class c_1746_1;
    integer i = -289;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1746_1;
    c_1746_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzxz101xx111xz10x011z1001x0z10xxzxxzxxxxzzzzzzzzxxzzzxxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
