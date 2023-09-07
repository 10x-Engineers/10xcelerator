class c_3317_1;
    integer i = -551;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3317_1;
    c_3317_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1zzx0zz1xx11010x10xzx1x0zz00xzzzzzxxxxzxxzzzzxxxzxzxzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
