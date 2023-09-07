class c_938_1;
    integer i = -155;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_938_1;
    c_938_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0zzx0xz100xz0z0z01x100x1z1xz1zxzxxzzzzxxzxxxxxzxxzzzxzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
