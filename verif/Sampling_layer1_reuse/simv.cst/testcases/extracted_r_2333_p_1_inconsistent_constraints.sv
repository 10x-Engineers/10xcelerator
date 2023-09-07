class c_2333_1;
    integer i = -387;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2333_1;
    c_2333_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zzz1x1zz1z1xx11xz101zz1xx1xzx1zzxxzxxxzxzxzxzxzzxxxzxxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
